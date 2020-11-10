import { walkFile } from '@spgoding/datapack-language-server/lib/services/common';
import { CacheFile, Config, DefaultCacheFile, FileType, isRelIncluded, ParsingError, Uri } from '@spgoding/datapack-language-server/lib/types';
import { IdentityNode } from '@spgoding/datapack-language-server/lib/nodes';
import { loadLocale } from '@spgoding/datapack-language-server/lib/locales';
import { TextDocument } from 'vscode-languageserver-textdocument';
import { findDatapackRoots, getConfiguration, initCache, initData, initPlugin, parseDocument } from './utils';
import * as core from '@actions/core';
import * as fs from 'fs';
import { TextDecoder } from 'util';
import path from 'path';
import { DiagnosticSeverity } from 'vscode-json-languageservice';
import { LintingData, Output } from './types/Output';

export let config: Config;
export let roots: Uri[];
export const cacheFile: CacheFile = DefaultCacheFile;

(async () => {
    // get dir
    const dir = path.dirname(process.cwd());
    // log group start
    core.startGroup('init log');
    // init config
    config = getConfiguration(path.join(dir, '.vscode', 'settings.json'));
    // init locale
    loadLocale(config.env.language, 'en');
    // find datapack roots
    roots = await findDatapackRoots(Uri.file(dir), config);
    // InitPlugin
    await initPlugin();
    // InitData
    await initData();
    // Cache Generate Region
    await initCache();
    // Lint Region
    const failedCount = { warning: 0, error: 0 };
    const results: LintingData = {};
    await Promise.all(roots.map(async root =>
        await walkFile(
            root.fsPath,
            root.fsPath,
            (file, rel) => {
                const extIndex = file.lastIndexOf('.');
                const ext = extIndex !== -1 ? file.substring(extIndex + 1) : '';
                const uri = Uri.file(file);
                const textDoc = TextDocument.create(uri.toString(), ext, 0, new TextDecoder().decode(fs.readFileSync(file)));
                if (!(textDoc.languageId === 'mcfunction' || textDoc.languageId === 'json'))
                    return;
                const parseData = parseDocument(textDoc);
                const id = IdentityNode.fromRel(rel);
                if (!id)
                    return;
                const type = id.category;
                const title = `${id.id} (${path.parse(root.fsPath).name}/${rel})`;

                const messages: Output[] = [];
                for (const node of parseData?.nodes ?? []) {
                    if (node.errors.length === 0) // Success
                        continue;
                    // Failed
                    messages.push(...getErrorMessage(node.errors, textDoc));
                }
                (results[type] = results[type] ?? []).push({ title, messages });
            },
            // eslint-disable-next-line require-await
            async (_, rel) => isRelIncluded(rel, config)
        )
    ));
    core.endGroup();
    for (const type of Object.keys(results)) {
        // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
        for (const result of results[type as FileType]!.sort((a, b) => a.title > b.title ? 1 : -1)) {
            if (result.messages.length === 0) {
                core.info(`\u001b[92m✓\u001b[39m  ${result.title}`);
                continue;
            }
            core.info(`\u001b[91m✗\u001b[39m  ${result.title}`);
            for (const out of result.messages) {
                if (out.severity === DiagnosticSeverity.Error) {
                    failedCount.error++;
                    core.info(`  ${out.message}`);
                } else {
                    failedCount.warning++;
                    core.info(out.message);
                }
            }
        }
    }
    if (failedCount.error + failedCount.warning !== 0) {
        const errorMulti = failedCount.error > 1 ? 's' : '';
        const warningMulti = failedCount.warning > 1 ? 's' : '';
        core.info(`Check failed (${failedCount.error} error${errorMulti}, ${failedCount.warning} warning${warningMulti})`);
        process.exitCode = core.ExitCode.Failure;
    } else {
        core.info('Check successful');
    }
})();

function getErrorMessage(errors: ParsingError[], textDoc: TextDocument): Output[] {
    const getLine = (e: ParsingError, t: TextDocument) => t.positionAt(e.range.start).line;
    return errors.filter(v => v.severity < 3).sort((a, b) => getLine(a, textDoc) - getLine(b, textDoc)).map(error => {
        const pos = textDoc.positionAt(error.range.start);
        return {
            message: [
                ' ',
                `   ${pos.line + 1}`.slice(-4),
                ':',
                (`${pos.character + 1}     `).slice(0, 5),
                ' ',
                (error.severity === 1 ? 'Error  ' : 'Warning'),
                ' ',
                error.message
            ].join(''),
            severity: error.severity
        };
    });
}
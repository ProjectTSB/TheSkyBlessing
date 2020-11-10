import { ParsingContext, constructContext, CommandTree, VersionInformation, Uri } from '@spgoding/datapack-language-server/lib/types';
import { SchemaRegistry } from '@spgoding/datapack-language-server/node_modules/@mcschema/core/lib/Registries';
import { getVanillaData, VanillaData } from '@spgoding/datapack-language-server/lib/data/VanillaData';
import { ParserCollection } from '@spgoding/datapack-language-server/lib/parsers/ParserCollection';
import { getCommandTree } from '@spgoding/datapack-language-server/lib/data/CommandTree';
import { getJsonSchemas } from '@spgoding/datapack-language-server/lib/data/JsonSchema';
import { getRootIndex } from '@spgoding/datapack-language-server/lib/services/common';
import { IdentityNode } from '@spgoding/datapack-language-server/lib/nodes';
import { requestText } from '@spgoding/datapack-language-server';
import { TextDocument } from 'vscode-languageserver-textdocument';
import path from 'path';
import { cacheFile, config, roots } from '..';

export const globalStoragePath = path.join(__dirname, '_storage');

let vanillaData: VanillaData;
let commandTree: CommandTree;
export let jsonSchemas: SchemaRegistry;

export async function initData(): Promise<void> {
    vanillaData = await getVanillaData(config.env.dataVersion, config.env.dataSource, await getLatestVersions(), globalStoragePath);
    jsonSchemas = await getJsonSchemas(config.env.jsonVersion, vanillaData.Registry);
    commandTree = await getCommandTree(config.env.cmdVersion);
}

export function getParsingContext(uri: Uri, textDoc: TextDocument): ParsingContext {
    const idResult = IdentityNode.fromRel(uri.fsPath);
    return constructContext({
        blockDefinition: vanillaData?.BlockDefinition,
        cache: cacheFile.cache,
        commandTree,
        config,
        cursor: -1,
        id: idResult?.id,
        jsonSchemas,
        namespaceSummary: vanillaData?.NamespaceSummary,
        nbtdoc: vanillaData?.Nbtdoc,
        parsers: new ParserCollection(),
        registry: vanillaData?.Registry,
        rootIndex: getRootIndex(uri, roots),
        roots: roots,
        textDoc
    });
}

/**
 * @license
 * MIT License
 *
 * Copyright (c) 2019-2020 SPGoding
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
async function getLatestVersions() {
    let ans: VersionInformation | undefined;
    try {
        console.info('[LatestVersions] Fetching the latest versions...');
        const str = await Promise.race([
            requestText('https://launchermeta.mojang.com/mc/game/version_manifest.json'),
            new Promise<string>((_, reject) => {
                setTimeout(() => reject(new Error('Time out!')), 7_000);
            })
        ]);
        const { latest: { release, snapshot }, versions }: { latest: { release: string, snapshot: string }, versions: { id: string }[] } = JSON.parse(str);
        const processedVersion = '1.16.2-pre1';
        const processedVersionIndex = versions.findIndex(v => v.id === processedVersion);
        const processedVersions = processedVersionIndex >= 0 ? versions.slice(0, processedVersionIndex + 1).map(v => v.id) : [];
        ans = (release && snapshot) ? { latestRelease: release, latestSnapshot: snapshot, processedVersions } : undefined;
    } catch (e) {
        console.warn(`[LatestVersions] ${e}`);
    }
    console.info(`[LatestVersions] versionInformation = ${JSON.stringify(ans)}`);
    return ans;
}
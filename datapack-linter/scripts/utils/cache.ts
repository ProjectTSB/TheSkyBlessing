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

import { CacheCategory, CacheType, ClientCache, combineCache, DatapackDocument, FileType, isRelIncluded, setUpUnit, trimCache, Uri } from '@spgoding/datapack-language-server/lib/types';
import { getRel, getTextDocument, getUri, walkFile } from '@spgoding/datapack-language-server/lib/services/common';
import { IdentityNode } from '@spgoding/datapack-language-server/lib/nodes';
import { readFile } from '@spgoding/datapack-language-server';
import { TextDocument } from 'vscode-languageserver-textdocument';
import path from 'path';
import { parseDocument } from './index';
import { cacheFile, config, roots } from '..';

export async function initCache(): Promise<void> {
    await Promise.all(roots.map(root => {
        const dataPath = path.join(root.fsPath, 'data');
        return walkFile(
            root.fsPath,
            dataPath,
            async abs => {
                const uri = getUri(Uri.file(abs).toString());
                await onAddedFile(uri);
            },
            // eslint-disable-next-line require-await
            async (_, rel) => isRelIncluded(rel, config)
        );
    }));
    for (const type of Object.keys(cacheFile.cache)) {
        const category = cacheFile.cache[type as CacheType] as CacheCategory;
        for (const id of Object.keys(category))
            delete category[id]?.ref;
    }
    trimCache(cacheFile.cache);
}

async function onAddedFile(uri: Uri): Promise<void> {
    const rel = getRel(uri, roots);
    const result = IdentityNode.fromRel(rel);
    if (!result)
        return;
    const { category, id } = result;
    if (!isRelIncluded(rel, config))
        return;
    await combineCacheOfNodes(uri, category, id);
}

async function combineCacheOfNodes(uri: Uri, type: FileType, id: IdentityNode) {
    const { doc, textDoc } = await getDocuments(uri);
    if (doc && textDoc) {
        const cacheOfNodes: ClientCache = {};
        for (const node of doc.nodes)
            combineCache(cacheOfNodes, node.cache, { uri, getPosition: offset => textDoc.positionAt(offset) });
        combineCache(cacheFile.cache, cacheOfNodes);
    }
    const unit = setUpUnit(cacheFile.cache, type, id);
    if (!(unit.def = unit.def ?? []).find(p => p.uri === uri.toString()))
        (unit.def = unit.def ?? []).push({ uri: uri.toString(), start: 0, end: 0, startLine: 0, startChar: 0, endLine: 0, endChar: 0 });

}

async function getDocuments(uri: Uri): Promise<{ doc: DatapackDocument | undefined, textDoc: TextDocument | undefined }> {
    try {
        const langID = getLangID(uri);
        if (langID === 'nbt') return { doc: undefined, textDoc: undefined };
        const getText = async () => await readFile(uri.fsPath);
        const textDoc = await getTextDocument({ uri, langID, version: null, getText });
        return { doc: await parseDocument(textDoc), textDoc };
    } catch (e) {
        console.error(`[getDocuments] for ${uri} `, e);
    }
    return { doc: undefined, textDoc: undefined };
}

function getLangID(uri: Uri): 'json' | 'mcfunction' | 'nbt' {
    if (uri.fsPath.endsWith('.json') || uri.fsPath.endsWith('.mcmeta'))
        return 'json';
    else if (uri.fsPath.endsWith('.nbt'))
        return 'nbt';
    else
        return 'mcfunction';
}
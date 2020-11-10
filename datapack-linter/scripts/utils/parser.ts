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

import { DatapackDocument, isRelIncluded, SyntaxComponent, Uri, ValidateResult } from '@spgoding/datapack-language-server/lib/types';
import { getJsonSchemaType, JsonSchemaType } from '@spgoding/datapack-language-server/lib/data/JsonSchema';
import { JsonDocument as JsonDocumentB, JsonNode } from '@spgoding/datapack-language-server/lib/nodes';
import { JsonSchemaHelper } from '@spgoding/datapack-language-server/lib/utils/JsonSchemaHelper';
import { StringReader } from '@spgoding/datapack-language-server/lib/utils/StringReader';
import { getRel, getUri } from '@spgoding/datapack-language-server/lib/services/common';
import { getLanguageService as getJsonLanguageService } from 'vscode-json-languageservice';
import { TextDocument } from 'vscode-languageserver-textdocument';
import { SynchronousPromise } from 'synchronous-promise';
import { getParsingContext, jsonSchemas } from './contextGenerator';
import { generateSyntaxComponentParsers } from './pluginLoader';
import { config, roots } from '..';

export function parseDocument(textDoc: TextDocument): DatapackDocument | undefined {
    const uri = getUri(textDoc.uri);
    return rawParseDocument(textDoc, uri);
}

function rawParseDocument(textDoc: TextDocument, uri: Uri): DatapackDocument | undefined {
    let ans: DatapackDocument | undefined;
    const rel = getRel(uri, roots);
    if (isRelIncluded(rel, config)) {
        if (textDoc.languageId === 'json') {
            if (rel) {
                const schemaType = getJsonSchemaType(rel);
                if (schemaType) {
                    ans = {
                        type: 'json',
                        nodes: [parseJsonNode({ uri, textDoc, schemaType })]
                    };
                }
            }
        } else if (textDoc.languageId === 'mcfunction') {
            ans = {
                type: 'mcfunction',
                nodes: parse(uri, textDoc)
            };
        }
    }
    return ans;
}

const jsonService = getJsonLanguageService({ promiseConstructor: SynchronousPromise });

export function parseJsonNode({ textDoc, uri, schemaType }: { textDoc: TextDocument, uri: Uri, schemaType: JsonSchemaType }): JsonNode {
    const ans: JsonNode = {
        json: jsonService.parseJSONDocument(textDoc) as unknown as JsonDocumentB,
        schemaType,
        ...ValidateResult.create()
    };
    const ctx = getParsingContext(uri, textDoc);
    JsonSchemaHelper.validate(ans, ans.json.root, jsonSchemas.get(schemaType), ctx);
    return ans;
}

function parse(uri: Uri, textDoc: TextDocument, end = textDoc.getText().length): SyntaxComponent[] {
    const ans: SyntaxComponent[] = [];
    const string = textDoc.getText();
    const reader = new StringReader(string, 0, end);
    const ctx = getParsingContext(uri, textDoc);
    const componentParsers = generateSyntaxComponentParsers(textDoc.languageId);
    const currentLine = () => textDoc.positionAt(reader.cursor).line;
    const finalLine = textDoc.positionAt(end).line;
    let lastLine = -1;
    while (lastLine < currentLine() && currentLine() <= finalLine) {
        const matchedParsers = componentParsers
            .map(v => ({ parser: v, testResult: v.test(reader.clone(), ctx) }))
            .filter(v => v.testResult[0])
            .sort((a, b) => b.testResult[1] - a.testResult[1]);
        if (matchedParsers.length > 0) {
            const result = matchedParsers[0].parser.parse(reader, ctx);
            ans.push(result);
        } else {
            console.error(`[parseSyntaxComponents] No matched parser at [${reader.cursor}] with “${reader.remainingString}”.`);
            break;
        }
        lastLine = currentLine();
        reader.nextLine(textDoc);
    }
    return ans;
}
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

import { Contributions, LanguageConfig } from '@spgoding/datapack-language-server/lib/plugins/LanguageConfigImpl';
import { PluginLoader } from '@spgoding/datapack-language-server/lib/plugins/PluginLoader';
import { SyntaxComponentParser } from '@spgoding/datapack-language-server/lib/types';
import { Plugin } from '@spgoding/datapack-language-server/lib/plugins';

let plugins: Map<string, Plugin>;
let contributions: Contributions;
let languageConfigs: Map<string, LanguageConfig>;

export async function initPlugin(): Promise<void> {
    plugins = await PluginLoader.load();
    contributions = await PluginLoader.getContributions(plugins);
    languageConfigs = await PluginLoader.getLanguageConfigs(plugins, contributions);
}

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export function generateSyntaxComponentParsers(language: string): SyntaxComponentParser<any>[] {
    return languageConfigs?.get(language)?.syntaxComponentParsers ?? [];
}
/* eslint-disable @typescript-eslint/no-explicit-any */

import { Config, constructConfig } from '@spgoding/datapack-language-server/lib/types';
import { TextDecoder } from 'util';
import * as fs from 'fs';

export function getConfiguration(configPath: string): Config {
    const json = new TextDecoder().decode(fs.readFileSync(configPath));
    const result = {};
    const obj = JSON.parse(json);
    Object.entries(obj).forEach(([path, value]) => {
        const walk = (key: any, [head, ...tail]: string[]): void => {
            if (key[head] === undefined)
                key[head] = {};

            if (tail.length > 0)
                walk(key[head], tail);
            else
                key[head] = value;
        };
        return walk(result, path.split('.'));
    });
    return constructConfig((result as any).datapack);
}
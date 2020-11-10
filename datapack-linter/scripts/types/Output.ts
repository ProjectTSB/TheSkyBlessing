import { FileType } from '@spgoding/datapack-language-server/lib/types';
import { DiagnosticSeverity } from 'vscode-json-languageservice';

export type LintingData = {
    [type in FileType]?: {
        title: string
        messages: Output[]
    }[]
};
export interface Output {
    severity: DiagnosticSeverity
    message: string
}
export type Option = 'base' | 'custom1' | 'custom2';

type ValidKey = 'M' | 'P' | 'T';

export type HValue = ValidKey | undefined;

export type BooleanEval = (a: boolean, b: boolean, c: boolean) => HValue;

export type KeyEval = (d: number, e: number, f: number) => number;

// TODO: solve this type
export type KeyEvaluatorMap = { [key: string]: KeyEval };

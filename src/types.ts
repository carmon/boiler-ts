export type Option = 'base' | 'custom1' | 'custom2';

type ValidKey = 'M' | 'P' | 'T';

export type Result = { h: ValidKey; k: number };

export type App = (
  o: Option,
) => (
  a: boolean,
  b: boolean,
  c: boolean,
  d: number,
  e: number,
  f: number,
) => Result;

export type HValue = ValidKey | undefined;

export type BooleanEval = (a: boolean, b: boolean, c: boolean) => HValue;

export type KeyEval = (d: number, e: number, f: number) => number;

export type KeyEvaluatorMap = { [key: string]: KeyEval };

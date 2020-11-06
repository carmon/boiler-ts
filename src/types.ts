export type Option = 'base' | 'custom1' | 'custom2';

export type HValue = 'M' | 'P' | 'T' | undefined;

export type BooleanEval = (
    a: boolean,
    b: boolean,
    c: boolean
) => HValue;
  
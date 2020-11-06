type H = 'M' | 'P' | 'T' | undefined;

type BooleanEval = (
  a: boolean,
  b: boolean,
  c: boolean
) => H;

type KeyResult = (
  d: number,
  e: number,
  f: number
) => number;

type KeyEvaluatorMap = { [key: string]: KeyResult };

const Base: KeyEvaluatorMap = {
  'M': (d, e, _) => d + (d * e / 10),
  'P': (d, e, f) => d + (d * (e + f) / 25.5),
  'T': (d, _, f) => d - (d * f / 30),
};

const Custom1: KeyEvaluatorMap = {
  'P': (d, e, _) => 2 * d + (d * e / 100),
};

const Custom2: KeyEvaluatorMap = {
  'M': (d, e, f) => f + d + (d * e / 100)
}

type Option = 'base' | 'custom1' | 'custom2';

const getProcessor = (
  o: Option
) => (
  a: boolean,
  b: boolean,
  c: boolean,
  d: number,
  e: number, // int
  f: number // int
) => {
  console.log(a, b, c, d, e, f);

  if (!b || !a && !c)
    return new Error('Invalid input.')

  if (a && !c)
    return evaluateH('M', d, e, f);

  if (a && c) {
    if (o === 'custom1')
      return 
    else
      return evaluateH('P', d, e, f);
  }

  if (!a && c) 
    return evaluateH('T', d, e, f);
};
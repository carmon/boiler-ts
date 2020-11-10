import { KeyEvaluatorMap, Option } from './types';

const base: KeyEvaluatorMap = {
  M: (d, e) => d + (d * e) / 10,
  P: (d, e, f) => d + (d * (e + f)) / 25.5,
  T: (d, _, f) => d - (d * f) / 30,
};

const custom1: KeyEvaluatorMap = {
  P: (d, e, _) => 2 * d + (d * e) / 100,
};

const custom2: KeyEvaluatorMap = {
  M: (d, e, f) => f + d + (d * e) / 100,
};

const map = {
  base: base,
  custom1: custom1,
  custom2: custom2,
};

export default (o: Option) => (
  h: string,
  d: number,
  e: number,
  f: number,
): number => {
  const res = map[o];
  return res[h] ? res[h](d, e, f) : base[h](d, e, f);
};

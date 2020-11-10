import { BooleanEval, Option } from './types';

const base: BooleanEval = (a, b, c) => {
  if (a && b && c) return 'P';
  if (a && b && !c) return 'M';
  if (!a && b && c) return 'T';

  return undefined;
};

const custom2: BooleanEval = (a, b, c) => {
  if (a && b && !c) return 'T';
  if (a && !b && c) return 'M';

  return base(a, b, c);
};

const map = {
  base: base,
  custom1: base,
  custom2: custom2,
};

export default (o: Option): BooleanEval => (a, b, c) => map[o](a, b, c);

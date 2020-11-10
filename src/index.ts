import boolEval from './boolEval';
import keyEval from './keyEval';
import { App, Option } from './types';

const getProcessor: App = (o: Option) => (
  a: boolean,
  b: boolean,
  c: boolean,
  d: number,
  e: number, // int
  f: number, // int
) => {
  const h = boolEval(o)(a, b, c);
  if (!h) throw new Error('H value is not valid.');

  return {
    h,
    k: keyEval(o)(h, d, e, f),
  };
};

export default getProcessor;

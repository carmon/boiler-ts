import { BooleanEval, Option } from './types';


const base: BooleanEval = (a, b, c) => {
    'M': (d, e, _) => d + (d * e / 10),
    'P': (d, e, f) => d + (d * (e + f) / 25.5),
    'T': (d, _, f) => d - (d * f / 30),
};

export default (o: Option): BooleanEval => (a, b, c) => {

};
# Sprout Therapy Assignment

This is the resolution for Sprout Assigment.

## Description

This repo is a simple node app, written it TypeScript. Is a main function that has to evaluate 6 arguments (3 booleans: *a*,*b* and *c*, one float: *d*, and 2 integers: *e* and *f*). 
Is divided in 2 files:
- `boolEval` is a map of functions that evaluate the first 3 bools, and return a *H* output variable that can be strings 'M', 'P', 'T' or return and error value (undefined).
- `keyEval` is a map of functions that evaluate the *H* output as argument, calculates operations with the rest of the original six a float and 2 ints, in this case, all numbers, and return a *K* float output.

Both outputs, *H* and *K*, are finally returned inside main function, in an JS object (`{ h, k }`). If boolean configurations are not met in `boolEval` (returns `undefined`), an error is returned instead.

Main function can have as argument up to 3 configs: `base`, `custom1` or `custom2`. The custom configurations run base config as a backup where no value is overriden.


## Intructions

- `npm i` to install
- `npm run test` to run cucumber-js unit test (you can pass a relative path for a test)
- `npm run build`: to build all files to JS (in a dist dir)
- `npm run start`: common usage (as a module import), check `index.ts` in root


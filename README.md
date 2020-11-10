# Sprout Therapy Assignment

This is the resolution for Sprout Assigment.

## Description

This repo is a simple node app, written it TypeScript. Is a main function that has to evaluate 6 arguments (3 booleans: *a*,*b* and *c*, one float: *d*, and 2 integers: *e* and *f*). 
Is divided in 2 files:
- `boolEval` is a map of functions that evaluate the first 3 bools, and return a *H* output variable that can be strings 'M', 'P', 'T' or return and error value (undefined).
- `keyEval` is a map of functions that evaluate the *H* output as argument, calculates operations with the rest of the original six a float and 2 ints, in this case, all numbers, and return a *K* float output.

Both outputs, *H* and *K*, are finally returned inside main function, in an JS object (`{ h, k }`). If boolean configurations are not met in `boolEval` (returns `undefined`), an error is returned instead.

Main function can have as argument up to 3 configs: `base`, `custom1` or `custom2`. The custom configurations run base config as a backup where no value is overriden.

## Thought process

When I first read the spec, I though it was simple, the 3 boolean variables are needed to combine and give *H* a value, and that value affects the calculation with the 3 numbers variables left, that return *K*. The trick is in the different configs, that affect boolean and key/number calculation.

My approach was a functional one, I prefer this in this kind of abstract exercises were the goal is to take data from *A* value to *B* value. I divided everything into 2 functions (one for booleans, the other for numbers) and called evaluators. Main file calls boolean evaluator first, check if there wasn't an error (if there is one, program exits with status 1), and then calls the key (and numbers) evaluator. Finally, it returns an object with both outputs.

I didn't make use of api or web libs, I limited it to a nodejs app, made in TypeScript and run via ts-node, but buildable to JS if you like. I like JS but like TS better, since is an improvement. The test suite uses cucumber-js, and step definitions use pickled-cucumber, a functional approch to the former lib. Both types and tests could definitely could be better, but I opted for speed over quality. I'm an iteration advocate XD

I used this boilerplate of TS because is my personal boilerplate to kick some projects every now and then. It has eslint and prettier for file linting. I added a github action to run test on every push to main branch. You can watch every commit I made since I created the main branch, I promise no cheating. Have a nice day. 

## Intructions

- `npm i` to install
- `npm run test` to run cucumber-js unit test (you can pass a relative path for a test)
- `npm run build`: to build all files to JS (in a dist dir)
- `npm run start`: common usage (as a module import), check `index.ts` in root


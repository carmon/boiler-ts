import app from './src/index';

console.log('Runnning App');
console.log(app('base')(true, true, false, 10.5, 5, 2));
console.log(app('custom1')(true, true, true, 10.5, 25, 2));
console.log(app('custom2')(true, false, true, 0.5, 15, 120));

// This will throw an error
// console.log(app('base')(false, false, false, 0.5, 15, 120));

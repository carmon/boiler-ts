import * as Schema from './schema';
import { parseSchema } from 'mural-schema';

const schema = Schema.OneTwoThreeNotWorkingEvent; // define the schema
const options = {}; // you can omit this argument

const validate = parseSchema(schema, options);

// do note that `parseSchema` will throw if `schema` is invalid
// (e.g. it references unknown types)

const input = { type: '1', image: '' }; // some input

const errors = validate(input);

if (!errors.length) {
  // success
  console.log('NO ERRORS!');
} else {
  // failure
  console.log(`Errors:: ${errors.map(o => JSON.stringify(o)).join()}`);
}

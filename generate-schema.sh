#!/bin/bash

gen() { # (from to)
  node ./node_modules/mural-schema/from-ts -e "$1" > "$2"
  ./node_modules/.bin/prettier --write "$2"
}

gen src/types.ts src/schema.ts


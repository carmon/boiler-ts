#!/bin/bash

# Make relative to root path
cd $(dirname $0)/..

# Run cucumber tests
TS_NODE_FILES=true ./node_modules/.bin/cucumber-js \
  --require-module ts-node/register \
  --exit \
  -r src/test/index.ts \
  $*
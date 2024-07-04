#!/bin/bash

echo "Running custom build steps"

npm install
npm run eslint
npm run build
npm run test
npx playwright install --with-deps
npm run test:e2e

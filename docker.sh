#!/bin/bash

cp .env.sample .env

if [[ -z "$tag" ]]; then
  npx playwright test
else
  npx playwright test --grep "$tag"
fi
#!/bin/sh

set -e

# Validate AWS credentials exist

if [ -z "$AWS_ACCESS_KEY_ID" ]; then
  echo "Error: AWS_ACCESS_KEY_ID is not set"
  exit 1
fi

if [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "Error: AWS_SECRET_ACCESS_KEY is not set"
  exit 1
fi

if [ -z "$PROFILE" ]; then
  echo "Warning: PROFILE is not set"
  export PROFILE=development
  exit 1
fi

# Start deployment

yarn global add @vue/cli
yarn add vue-cli-plugin-s3-deploy@next
yarn install

yarn build --mode ${PROFILE}
echo ${$AWS_ACCESS_KEY_ID}
echo ${$AWS_SECRET_ACCESS_KEY}
yarn deploy --mode ${PROFILE}
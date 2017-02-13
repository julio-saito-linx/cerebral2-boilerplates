#!/bin/bash

set -o verbose

cd /tmp/new-app



# add packages
yarn add -E cerebral-provider-http@next
yarn add js-logger

git add .
git commit -m"[tutorial] add packages"



# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

rm -rf public
cp -R /tmp/cerebral/docs/tutorial/public public/
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/index.html public/index.html

rm -rf src
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/11/src src/

git add .
git commit -m"[tutorial] add example files"


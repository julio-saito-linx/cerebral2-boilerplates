#!/bin/bash

set -e

cd new-app



# add packages
yarn add -E js-logger cerebral-provider-http@next

git add .
git commit -m"[tutorial] add packages"



# copy files
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/docs/tutorial/public public/
cp -R /tmp/cerebral/demos/forms-demo/public/index.html public/index.html

rm -rf src
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/11/src src/

git add .
git commit -m"[tutorial] add example files"



cd ..

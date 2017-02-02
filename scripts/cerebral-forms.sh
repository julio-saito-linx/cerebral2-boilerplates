#!/bin/bash

set -e

cd new-app



# add packages
yarn add -E cerebral-forms@next aphrodite

git add .
git commit -m"[cerebral-forms] add packages"



# copy files
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/demos/forms-demo/public public/

rm -rf src
cp -R /tmp/cerebral/demos/forms-demo/src src/

git add .
git commit -m"[cerebral-forms] cerebral-forms demo"



cd ..

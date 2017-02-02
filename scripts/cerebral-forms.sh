#!/bin/bash

set -o verbose

cd /tmp/new-app



# add packages
yarn add -E cerebral-forms@next aphrodite

git add .
git commit -m"[cerebral-forms] add packages"



# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

rm -rf public
cp -R /tmp/cerebral/demos/forms-demo/public public/

rm -rf src
cp -R /tmp/cerebral/demos/forms-demo/src src/

git add .
git commit -m"[cerebral-forms] cerebral-forms demo"


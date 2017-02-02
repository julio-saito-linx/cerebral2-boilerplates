#!/bin/bash

set -o verbose

cd /tmp/new-app



# add packages
yarn add classnames react react-dom todomvc-app-css todomvc-common uuid

git add .
git commit -m"[todomvc] add packages"



# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

rm -rf public
cp -R /tmp/cerebral/demos/todomvc/public public/

rm -rf src
cp -R /tmp/cerebral/demos/todomvc/src src/

git add .
git commit -m"[todomvc] add example files"


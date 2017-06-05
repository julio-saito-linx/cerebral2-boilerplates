#!/bin/bash

set -o verbose

cd /tmp/new-app

git add .
git commit -m"[cerebral-forms] add packages"

# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

# add missing packages
yarn add babel-core@7 babel-loader babel-preset-es2015 babel-preset-react -D

git add .
git commit -m"[universal] universal full demo"

yarn start

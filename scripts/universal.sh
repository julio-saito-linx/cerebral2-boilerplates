#!/bin/bash

set -o verbose

cd /tmp/new-app

# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

cp -R /tmp/cerebral/packages/demos/universal/* .

git add .
git commit -m"[universal] initial files"

# add missing packages
yarn add babel-core@6.24.1 babel-loader babel-preset-es2015 babel-preset-react -D

git add .
git commit -m"[universal] add missing packages"

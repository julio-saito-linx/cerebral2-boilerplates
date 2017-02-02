#!/bin/bash

set -o verbose



### create a new folder

rm -rf /tmp/new-app
mkdir -p /tmp/new-app
cp -Rv ./boilerplates/common-root/. /tmp/new-app/
cd /tmp/new-app




### new git repository

git init




### first commit

git add .
git commit -m"[initial] add commom root config boilerplate files"




### add some packages

yarn add react react-dom
yarn add -D react-scripts standard
yarn add -E cerebral@next function-tree@next cerebral-router@next

git add .
git commit -m"[cerebral] add cerebral packages"


#!/bin/bash

set -e

### install create-react-app

#yarn



### create a new react app

#create-react-app new-app




### create a new folder

rm -rf new-app
mkdir -p new-app
cp -Rv ./boilerplates/common-root/. new-app/
cd new-app




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




### back

cd ..

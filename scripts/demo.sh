#!/bin/bash

set -e

cd new-app



# copy files
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

cp /tmp/cerebral/demos/demo/database.rules.json  database.rules.json
cp /tmp/cerebral/demos/demo/firebase.json        firebase.json
cp /tmp/cerebral/demos/demo/storage.rules        storage.rules

cp /tmp/cerebral/demos/demo/package.json         package.json
# remove line with @cerebral/monorepo devDependency
sed -i '/monorepo/d' ./package.json

yarn
yarn add react-scripts

rm -rf public
cp -R /tmp/cerebral/demos/demo/public public/
rm -rf src
cp -R /tmp/cerebral/demos/demo/src src/
git add .
git commit -m"[demo] cerebral-forms demo"



cd ..

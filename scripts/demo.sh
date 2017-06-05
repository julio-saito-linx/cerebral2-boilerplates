#!/bin/bash

set -o verbose

cd /tmp/new-app



# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

cp /tmp/cerebral/packages/demos/demo/database.rules.json  database.rules.json
cp /tmp/cerebral/packages/demos/demo/firebase.json        firebase.json
cp /tmp/cerebral/packages/demos/demo/storage.rules        storage.rules

cp /tmp/cerebral/packages/demos/demo/package.json         package.json
# remove line with @cerebral/monorepo devDependency
sed -i '/monorepo/d' ./package.json

yarn
yarn add react-scripts

rm -rf public
cp -R /tmp/cerebral/packages/demos/demo/public public/
rm -rf src
cp -R /tmp/cerebral/packages/demos/demo/src src/
git add .
git commit -m"[demo] cerebral-forms demo"



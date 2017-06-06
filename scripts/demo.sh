#!/bin/bash

set -o verbose

cd /tmp/new-app



# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

cp /tmp/cerebral/packages/demos/demo/package.json         package.json
yarn add react-scripts

cp /tmp/cerebral/packages/demos/demo/database.rules.json  database.rules.json
cp /tmp/cerebral/packages/demos/demo/firebase.json        firebase.json
cp /tmp/cerebral/packages/demos/demo/storage.rules        storage.rules
cp -R /tmp/cerebral/packages/demos/demo/public public/
cp -R /tmp/cerebral/packages/demos/demo/src src/

git add .
git commit -m"[demo] cerebral-forms demo"

yarn

### install create-react-app

yarn



### create a new react app

create-react-app new-app



### new git repository

cd new-app
git init
git add .
git commit -m"initial app"



### replace commom root files

cp -R ../boilerplates/common-root/* .
git add .
git commit -m"[root] add commom root config boilerplate files"



### install standard (optional)

yarn add standard -D
git add .
git commit -m"add standard package"



### install initial cerebral packages

yarn add -E cerebral@next function-tree@next cerebral-router@next
git add .
git commit -m"[cerebral] add cerebral packages"

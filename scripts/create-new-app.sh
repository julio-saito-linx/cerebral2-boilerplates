### install create-react-app

#yarn



### create a new react app

#create-react-app new-app




### create a new folder

mkdir new-app
cd new-app




### new git repository

git init




### initial files

cp -R ../boilerplates/common-root/* .
git add .
git commit -m"[initial] add commom root config boilerplate files"




### install react-scripts

yarn add react-scripts -D



### install standard (optional)

yarn add standard -D
git add .
git commit -m"[lint] add standard package"



### install initial cerebral packages

yarn add -E cerebral@next function-tree@next cerebral-router@next
git add .
git commit -m"[cerebral] add cerebral packages"

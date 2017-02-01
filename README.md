# cerebral boilerplates:




<!-- MarkdownTOC -->

- [before start](#before-start)
- [create-react-app boilerplate](#create-react-app-boilerplate)
    - [install create-react-app](#install-create-react-app)
    - [create a new react app](#create-a-new-react-app)
    - [new git repository](#new-git-repository)
    - [install standard](#install-standard)
    - [replace commom root files](#replace-commom-root-files)
    - [install initial cerebral packages](#install-initial-cerebral-packages)
    - [get cerebral-forms-example](#get-cerebral-forms-example)
    - [test your app](#test-your-app)

<!-- /MarkdownTOC -->





## before start

- install [node](https://nodejs.org/en/)
- install [yarn](https://yarnpkg.com/)

--------





## create-react-app boilerplate

### install create-react-app

```sh
yarn
```



### create a new react app

```sh
create-react-app new-app
```



### new git repository

```sh
cd new-app
git init
git add .
git commit -m"initial app"
```



### install standard

_I recommend you use some [standard formatting tool](https://github.com/feross/standard#are-there-text-editor-plugins)_

```sh
yarn add standard -D
git add .
git commit -m"add standard package"
```



### replace commom root files

```sh
cp -R ../boilerplates/common-root/* .
git add .
git commit -m"commom root"
```



### install initial cerebral packages

```sh
yarn add -E cerebral@next function-tree@next cerebral-router@next
git add .
git commit -m"add cerebral packages"
```



### get cerebral-forms-example

```sh
yarn add -E cerebral-forms@next aphrodite
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
git add .
git commit -m"add cerebral-forms and aphrodite packages"

rm -rf public
cp -R /tmp/cerebral/demos/forms-demo/public public/
rm -rf src
cp -R /tmp/cerebral/demos/forms-demo/src src/
git add .
git commit -m"cerebral-forms demo"
```



### test your app

```sh
yarn start
```

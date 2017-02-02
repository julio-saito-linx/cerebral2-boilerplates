# cerebral boilerplates:




<!-- MarkdownTOC -->

- [before start](#before-start)
- [create-react-app boilerplate](#create-react-app-boilerplate)
- [Initial examples](#initial-examples)
    - [tutorial \(last step\)](#tutorial-last-step)
    - [cerebral-forms](#cerebral-forms)

<!-- /MarkdownTOC -->





# before start

- install [node](https://nodejs.org/en/)
- install [yarn](https://yarnpkg.com/)

--------





# create-react-app boilerplate

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
git commit -m"[root] add commom root config boilerplate files"
```



### install initial cerebral packages

```sh
yarn add -E cerebral@next function-tree@next cerebral-router@next
git add .
git commit -m"[cerebral] add cerebral packages"
```




-------


# Initial examples

## tutorial (last step)

```sh
yarn add -E js-logger cerebral-provider-http@next
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
git add .
git commit -m"[tutorial] add js-logger"

rm -rf public
cp -R /tmp/cerebral/docs/tutorial/public public/
cp -R /tmp/cerebral/demos/forms-demo/public/index.html public/index.html
rm -rf src
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/11/src src/
git add .
git commit -m"[tutorial] add example files"
```


## cerebral-forms

```sh
yarn add -E cerebral-forms@next aphrodite
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
git add .
git commit -m"[cerebral-forms] add cerebral-forms and aphrodite packages"

rm -rf public
cp -R /tmp/cerebral/demos/forms-demo/public public/
rm -rf src
cp -R /tmp/cerebral/demos/forms-demo/src src/
git add .
git commit -m"[cerebral-forms] cerebral-forms demo"
```



### test your app

```sh
yarn start
```

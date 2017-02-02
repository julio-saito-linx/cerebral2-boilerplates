# cerebral boilerplates:




<!-- MarkdownTOC -->

- [0\) pre-requirements](#0-pre-requirements)
- [1\) prepare your new app](#1-prepare-your-new-app)
- [2\) Choose an initial cerebral example](#2-choose-an-initial-cerebral-example)
    - [2.1\) tutorial \(last step\)](#21-tutorial-last-step)
    - [2.2\) cerebral-forms](#22-cerebral-forms)
- [3\) Final Steps](#3-final-steps)

<!-- /MarkdownTOC -->





# 0) pre-requirements

- install [node](https://nodejs.org/en/)
- install [yarn](https://yarnpkg.com/)

--------





# 1) prepare your new app

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


# 2) Choose an initial cerebral example

## 2.1) tutorial (last step)

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


## 2.2) cerebral-forms

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



# 3) Final Steps

### test your app

```sh
yarn start
```

### move your 'new-app' to your personal projects folder

```sh
cd ..
mv new-app ../new-project-name
cd ../new-project-name
```

### edit package json

```sh
yarn init
```

### push to a remote repo

```sh
git remote set-url origin https://github.com/USERNAME/REPO
git push
# git push -f # CAUTION: --force is destructive
```


# easy Cerebral 2 boilerplates:

Some steps to get going with a cerebral 2 app.

<!-- MarkdownTOC -->

- [0\) pre-requirements](#0-pre-requirements)
- [1,2\) easy way - run two scripts](#12-easy-way---run-two-scripts)
- [Step by Step](#step-by-step)
    - [2\) Choose an initial cerebral example](#2-choose-an-initial-cerebral-example)
- [3\) Final Steps](#3-final-steps)

<!-- /MarkdownTOC -->



# 0) pre-requirements

### install node and yarn

- install [node](https://nodejs.org/en/)
- install [yarn](https://yarnpkg.com/)

### clone this repo

```sh
git clone https://github.com/saitodisse/cerebral2-boilerplates
cd cerebral2-boilerplates
```




--------



# 1,2) easy way - run two scripts

### create a new app with create-react-app

```sh
./scripts/create-new-app.sh
```


### choose your cerebral project starting example

```sh
# tutorial (last step)
./scripts/tutorial.sh

# todomvc
./scripts/todomvc.sh

# cerebral-forms
./scripts/cerebral-forms.sh

# demo (firebase integration)
./scripts/demo.sh

# universal
./scripts/universal.sh
```


### go to step 3

continue on step 3



--------------



# Step by Step

### create a new folder

```sh
rm -rf /tmp/new-app
mkdir -p /tmp/new-app
cp -Rv ./boilerplates/common-root/. /tmp/new-app/
cd /tmp/new-app
```




### new git repository

```sh
git init
```




### first commit

```sh
git add .
git commit -m"[initial] add commom root config boilerplate files"
```




### add some packages

```sh
yarn add react react-dom
yarn add -D react-scripts standard
yarn add -E cerebral@beta @cerebral/router

git add .
git commit -m"[cerebral] add cerebral packages"
```





-------





## 2) Choose an initial cerebral example




### 2.1) tutorial (last step)

#### go to folder

```sh
cd /tmp/new-app
```



#### add packages

```sh
yarn add -E js-logger @cerebral/http

git add .
git commit -m"[tutorial] add packages"
```



#### copy files

```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/docs/tutorial/public public/
cp -R /tmp/cerebral/packages/demos/forms-demo/public/index.html public/index.html

rm -rf src
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/11/src src/

git add .
git commit -m"[tutorial] add example files"
```








### 2.2) cerebral-forms

#### go to folder

```sh
cd /tmp/new-app
```



#### add packages

```sh
yarn add -E @cerebral/forms aphrodite

git add .
git commit -m"[cerebral-forms] add packages"
```



#### copy files


```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/packages/demos/forms-demo/public public/

rm -rf src
cp -R /tmp/cerebral/packages/demos/forms-demo/src src/

git add .
git commit -m"[cerebral-forms] cerebral-forms demo"
```








### 2.3) demo (firebase example)

#### go to folder

```sh
cd /tmp/new-app
```

#### copy files

```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

cp /tmp/cerebral/packages/demos/demo/database.rules.json  database.rules.json
cp /tmp/cerebral/packages/demos/demo/firebase.json        firebase.json
cp /tmp/cerebral/packages/demos/demo/storage.rules        storage.rules

rm -rf public
cp -R /tmp/cerebral/packages/demos/demo/public public/
rm -rf src
cp -R /tmp/cerebral/packages/demos/demo/src src/

cp /tmp/cerebral/packages/demos/demo/package.json         package.json
# remove line with @cerebral/monorepo devDependency
sed -i '/monorepo/d' ./package.json
```


#### add react-scripts

```sh
yarn
yarn add react-scripts

git add .
git commit -m"[demo] cerebral-forms demo"
```








### 2.4) todomvc

#### go to folder

```sh
cd /tmp/new-app
```

#### add packages

```sh
# add packages
yarn add classnames react react-dom todomvc-app-css todomvc-common uuid

git add .
git commit -m"[todomvc] add packages"
```


#### copy files

```sh
# copy files
if [ ! -d "/tmp/cerebral" ]; then
  git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral
fi

rm -rf public
cp -R /tmp/cerebral/packages/demos/todomvc/public public/

rm -rf src
cp -R /tmp/cerebral/packages/demos/todomvc/src src/

git add .
git commit -m"[todomvc] add example files"
```




----------




# 3) Final Steps



### test your app

```sh
yarn start
```



### move your '/tmp/new-app' to your personal projects folder

```sh
mv /tmp/new-app ~/My-Projects/SOME_NEW_PROJECT_FOLDER_NAME
```



### edit package json

```sh
# in your porject's folder
yarn init
```



### push to a remote repo

```sh
git remote set-url origin https://github.com/USERNAME/REPO
git push
# git push -f # CAUTION: remember that --force is destructive
```


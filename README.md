# cerebral boilerplates:




<!-- MarkdownTOC -->

- [0\) pre-requirements](#0-pre-requirements)
- [1,2\) install with shell script](#12-install-with-shell-script)
- [Step by Step](#step-by-step)
    - [1\) prepare your new app](#1-prepare-your-new-app)
    - [2\) Choose an initial cerebral example](#2-choose-an-initial-cerebral-example)
- [3\) Final Steps](#3-final-steps)

<!-- /MarkdownTOC -->





# 0) pre-requirements

- install [node](https://nodejs.org/en/)
- install [yarn](https://yarnpkg.com/)

--------


# 1,2) install with shell script

### create a new app with create-react-app

```sh
./scripts/create-new-app.sh
```


### choose your template cerebral project

```sh
# tutorial (last step)
/scripts/tutorial.sh
# cerebral-forms
/scripts/cerebral-forms.sh
# demo (firebase integration)
/scripts/demo.sh
```


### go to step 3

continue on step 3



--------------



# Step by Step

## 1) prepare your new app

### clone this repo

```sh
git clone https://github.com/saitodisse/cerebral2-boilerplates
cd cerebral2-boilerplates
```



### create a new folder

```sh
rm -rf new-app
mkdir -p new-app
cp -Rv ./boilerplates/common-root/. new-app/
cd new-app
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
yarn add -E cerebral@next function-tree@next cerebral-router@next

git add .
git commit -m"[cerebral] add cerebral packages"
```




### back

```sh
cd ..
```



-------


## 2) Choose an initial cerebral example

### 2.1) tutorial (last step)

#### go to folder

```sh
cd new-app
```



#### add packages

```sh
yarn add -E js-logger cerebral-provider-http@next

git add .
git commit -m"[tutorial] add packages"
```



#### copy files

```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/docs/tutorial/public public/
cp -R /tmp/cerebral/demos/forms-demo/public/index.html public/index.html

rm -rf src
cp -R /tmp/cerebral/docs/tutorial/DO_NOT_TOUCH/11/src src/

git add .
git commit -m"[tutorial] add example files"
```


#### go back

```sh
cd ..
```


### 2.2) cerebral-forms

#### go to folder

```sh
cd new-app
```



#### add packages

```sh
yarn add -E cerebral-forms@next aphrodite

git add .
git commit -m"[cerebral-forms] add packages"
```



#### copy files


```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

rm -rf public
cp -R /tmp/cerebral/demos/forms-demo/public public/

rm -rf src
cp -R /tmp/cerebral/demos/forms-demo/src src/

git add .
git commit -m"[cerebral-forms] cerebral-forms demo"
```



#### go back

```sh
cd ..
```



### 2.3) demo (firebase example)

#### go to folder

```sh
cd new-app
```

#### copy files

```sh
git clone --depth=1 https://github.com/cerebral/cerebral /tmp/cerebral

cp /tmp/cerebral/demos/demo/database.rules.json  database.rules.json
cp /tmp/cerebral/demos/demo/firebase.json        firebase.json
cp /tmp/cerebral/demos/demo/storage.rules        storage.rules

rm -rf public
cp -R /tmp/cerebral/demos/demo/public public/
rm -rf src
cp -R /tmp/cerebral/demos/demo/src src/

cp /tmp/cerebral/demos/demo/package.json         package.json
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

#### go back

```sh
cd ..
```





----------




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
# git push -f # CAUTION: remember that --force is destructive
```


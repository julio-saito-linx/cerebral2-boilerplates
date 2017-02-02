cd new-app

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

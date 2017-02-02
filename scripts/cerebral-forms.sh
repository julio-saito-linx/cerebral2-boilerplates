cd new-app

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


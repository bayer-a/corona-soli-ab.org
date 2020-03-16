#!/bin/sh

# abort on errors
set -e

# change to main directory
cd "${0%/*}/.."

# build
npm run build

# navigate into the build output directory
cd ./docs/.vuepress/dist

# create git repo
git init
git add -A
git commit -m 'deploy'

# push to gh-pages
git push -f git@github.com:Corona-Soli-Aschaffenburg/corona-soli-ab.org.git master:gh-pages

echo "done!"
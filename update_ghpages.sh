#!/bin/bash

git checkout gh-pages
git merge master
./gradlew clean asciidoctor
cp -R build/asciidoc/html5/* . 
git commit -a -m "Updated files"
git push origin gh-pages
git checkout master

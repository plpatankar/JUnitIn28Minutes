#!/bin/bash

#git config remote.origin.url "https://plpatankar:Casper9i@github.com/plpatankar/JUnitIn28Minutes.git"
git config remote.origin.url "https://OAuth:042d64db17e8de8863970b0ed0ba025523232683@github.com/plpatankar/JUnitIn28Minutes.git"

git status
git checkout master
ls -t1 target/junit-example-*-SNAPSHOT.jar| head -1 > filepath.txt
v1=`cat version.txt`;
v1=$v1+1
echo $v1 > version.txt

cat version.txt
git config --global user.name "Prashant Patankar"
git config --global user.email plpatankar@gmail.com
git add version.txt
git commit -m "Added new version in file"
git push origin master

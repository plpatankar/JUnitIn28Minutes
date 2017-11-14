#!/bin/bash

ls -t1 target/junit-example-*-SNAPSHOT.jar| head -1 > filepath.txt
v1=`cat version.txt`;
v1=v1+1
echo $v1 > version.txt

git config --global user.name "Prashant Patankar"
git config --global user.email plpatankar@gmail.com
git add version.txt
git commit -m "Added new version in file"
git push

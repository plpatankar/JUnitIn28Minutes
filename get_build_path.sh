#!/bin/bash

cp /dev/null jarpath.txt
ls -t1 target/junit-example-*-SNAPSHOT.jar| head -1 | tee -a jarpath.txt
echo 2.23 > version.txt

#!/bin/bash

ls -t1 target/junit-example-*-SNAPSHOT.jar| head -1 > filepath.txt
echo 2.23 > version.txt

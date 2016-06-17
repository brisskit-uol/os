#!/usr/bin/env bash

unzip build/openspecimen-3.1.1.zip

cp build.properties build/openspecimen-3.1.1

cd build/openspecimen-3.1.1/www
npm install
bower install

cd ..
gradle build
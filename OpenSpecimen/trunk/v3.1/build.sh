#!/usr/bin/env bash

cd build
unzip openspecimen-3.1.1.zip

cd ..
cp build.properties build/openspecimen-3.1.1

cd build/openspecimen-3.1.1/www
npm install
bower install

cd ..
gradle build

cp build/openspecimen-3.1.1/build/libs/openspecimen.war deploy/app/webapps/
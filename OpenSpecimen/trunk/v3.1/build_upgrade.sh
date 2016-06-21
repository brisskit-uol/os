#!/usr/bin/env bash

OS_VERSION='3.1.1.LCBRU'

rm deploy/app/webapps/openspecimen.war

cd build
unzip openspecimen-$OS_VERSION.zip

cd ..
cp build.properties.upgrade build/openspecimen-$OS_VERSION/build.properties

cd build/openspecimen-$OS_VERSION/www
npm install
bower install

cd ..
gradle build

cd ../..
cp build/openspecimen-$OS_VERSION/build/libs/openspecimen.war deploy/app/webapps/

rm -fR build/openspecimen-$OS_VERSION

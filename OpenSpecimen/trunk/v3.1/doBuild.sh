#!/usr/bin/env bash

OS_VERSION='3.1.1.LCBRU'

function buildOpenSpecimen {
    rm deploy/builds/openspecimen-$1.war

	cd build
	unzip openspecimen-$OS_VERSION.zip

	cd ..
	cp build/build.properties.$1 build/openspecimen-$OS_VERSION/build.properties

	cd build/openspecimen-$OS_VERSION/www
	npm install
	bower install

	cd ..
	gradle build

	cd ../..
	cp build/openspecimen-$OS_VERSION/build/libs/openspecimen.war deploy/builds/openspecimen-$1.war

	rm -fR build/openspecimen-$OS_VERSION	
}

buildOpenSpecimen 'fresh'
buildOpenSpecimen 'upgrade'
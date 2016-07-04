#!/usr/bin/env bash

OS_VERSION='3.2'

function buildOpenSpecimen {
	cd build

	unzip le_plugin.zip

	cd /openspecimen-$OS_VERSION/www
	npm install
	bower install

	cd ..
	gradle build

	cd ../..
	cp build/openspecimen-$OS_VERSION/build/libs/openspecimen.war deploy/builds/openspecimen-$1.war

	rm -fR build/openspecimen-$OS_VERSION
}

function buildOpenSpecimen {
    rm deploy/builds/openspecimen-$1.war

	cd build
	unzip openspecimen-$OS_VERSION.zip

	cp build.properties.$1 build/openspecimen-$OS_VERSION/build.properties

	cd openspecimen-$OS_VERSION/www
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
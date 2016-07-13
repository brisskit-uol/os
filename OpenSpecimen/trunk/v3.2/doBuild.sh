#!/usr/bin/env bash

OS_VERSION='3.2.LCBRU'

function buildLeicesterPlugin {
	cd build

	unzip openspecimen_extensions.zip

	cd openspecimen_extensions/le/src/main/webapp
	npm install

	cd ../../../
	gradle build

	cd ../../../

	cp build/openspecimen_extensions/le/build/libs/os-le-1.0.0.jar deploy/builds/

	rm -fR build/openspecimen_extensions
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

buildLeicesterPlugin
buildOpenSpecimen 'fresh'
buildOpenSpecimen 'upgrade'
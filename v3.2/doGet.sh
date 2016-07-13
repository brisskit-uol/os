#!/usr/bin/env bash

OS_VERSION='3.2'

cd build

# Download OpenSpecimen Release
wget  --output-document=openspecimen-$OS_VERSION.zip https://github.com/krishagni/openspecimen/archive/v$OS_VERSION.zip

# Apply LCBRU Fixes
unzip openspecimen-$OS_VERSION.zip
mv openspecimen-$OS_VERSION openspecimen-$OS_VERSION.LCBRU
cp db_2.6_schema.xml openspecimen-$OS_VERSION.LCBRU/WEB-INF/resources/db/2.6/schema.xml
cp db_3.1_schema.xml openspecimen-$OS_VERSION.LCBRU/WEB-INF/resources/db/3.1/schema.xml

zip -r openspecimen-$OS_VERSION.LCBRU.zip openspecimen-$OS_VERSION.LCBRU

# Get OpenSpecimen Plugins
svn export https://github.com/krishagni/os-extensions.git/trunk/ openspecimen_extensions

zip -rm openspecimen_extensions.zip openspecimen_extensions
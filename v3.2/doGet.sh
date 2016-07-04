#!/usr/bin/env bash

OS_VERSION='3.2'

cd build

wget  --output-document=openspecimen-$OS_VERSION.zip https://github.com/krishagni/openspecimen/releases/tag/v$OS_VERSION

svn export https://github.com/krishagni/os-extensions.git/trunk/ openspecimen_extensions

zip -rm openspecimen_extensions.zip openspecimen_extensions
#!/usr/bin/env bash

OS_VERSION='3.2'

wget --directory-prefix=build/ https://github.com/krishagni/openspecimen/releases/tag/v$OS_VERSION openspecimen-$OS_VERSION.zip
svn export https://github.com/krishagni/os-extensions.git/trunk/le build/le_plugin
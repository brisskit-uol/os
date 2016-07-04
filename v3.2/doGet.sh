#!/usr/bin/env bash

OS_VERSION='3.2'

wget  --output-document=build/openspecimen-$OS_VERSION.zip https://github.com/krishagni/openspecimen/releases/tag/v$OS_VERSION
svn export https://github.com/krishagni/os-extensions.git/trunk/le build/le_plugin
zip -rm build/le_plugin.zip build/le_plugin
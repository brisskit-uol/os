#!/bin/bash

unset JAVA_TOOL_OPTIONS
export JAVA_ROOT=/usr/lib64/jvm/java
export JDK_HOME=/usr/lib64/jvm/java
export SDK_HOME=/usr/lib64/jvm/java
export JAVA_BINDIR=/usr/lib64/jvm/java/bin
export JRE_HOME=/usr/lib64/jvm/java/jre
JAVA_HOME=/opt/java
JRE_HOME=/opt/java/jre
OPEN_SPECIMEN_DIR=/local/openSpecimen_v2_4/app

export JAVA_TOOL_OPTIONS=-XX:CompressedClassSpaceSize=10m
export JAVA_OPTS="-Xmx2G -XX:-UseCompressedClassPointers"

$OPEN_SPECIMEN_DIR/bin/shutdown.sh


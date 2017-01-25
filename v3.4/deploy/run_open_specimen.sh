#!/bin/bash

JAVA_PROCESS_ID=`pgrep java`

if [ "${JAVA_PROCESS_ID:-null}" != null ]; then
    echo "Cannot upgrade because java process is still running.  Process ID = $JAVA_PROCESS_ID"
    exit 1
fi

unset JAVA_TOOL_OPTIONS
export JAVA_ROOT=/usr/lib64/jvm/java
export JDK_HOME=/usr/lib64/jvm/java
export SDK_HOME=/usr/lib64/jvm/java
export JAVA_BINDIR=/usr/lib64/jvm/java/bin
export JRE_HOME=/usr/lib64/jvm/java/jre
JAVA_HOME=/opt/java
JRE_HOME=/opt/java/jre
OPEN_SPECIMEN_DIR=/local/openSpecimen/app

export JAVA_OPTS="-Xmx2G -XX:-UseCompressedClassPointers -XX:CompressedClassSpaceSize=1g"

$OPEN_SPECIMEN_DIR/bin/catalina.sh start >$OPEN_SPECIMEN_DIR/logs/tomcat-start.log  2>$OPEN_SPECIMEN_DIR/logs/tomcat-start.err &


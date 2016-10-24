#!/usr/bin/env bash

if [ "$1" != "fresh" ] && [ "$1" != "upgrade" ]; then
    echo "doInstall must have a parameter of either \"fresh\" or \"upgrade\""
    exit 1
fi

JAVA_PROCESS_ID=`pgrep java`

if [ "${JAVA_PROCESS_ID:-null}" != null ]; then
    echo "Cannot upgrade because java process is still running.  Process ID = $JAVA_PROCESS_ID"
    exit 1
fi

OPEN_SPECIMEN_DIR=/local/openSpecimen
OPEN_SPECIMEN_OLD_DIR=/local/openSpecimen_old

if [ -d "$OPEN_SPECIMEN_DIR" ]; then
	echo "Existing OpenSpecimen folder $OPEN_SPECIMEN_DIR moved to saved directory $OPEN_SPECIMEN_OLD_DIR"
	rm -fR $OPEN_SPECIMEN_OLD_DIR
	mv $OPEN_SPECIMEN_DIR $OPEN_SPECIMEN_OLD_DIR
fi

cp -R deploy $OPEN_SPECIMEN_DIR

cp $OPEN_SPECIMEN_DIR/builds/openspecimen-$1.war $OPEN_SPECIMEN_DIR/app/webapps/openspecimen.war
cp $OPEN_SPECIMEN_DIR/builds/os-le-1.0.0.jar $OPEN_SPECIMEN_DIR/app/plugins
touch $OPEN_SPECIMEN_DIR/openspecimen.log

setfacl -m u:wwwrun:rw $OPEN_SPECIMEN_DIR/openspecimen.log
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/run_open_specimen.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/stop_open_specimen.sh
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/logs/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/work/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/webapps/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/plugins/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/osdata

grep -rl {{apphost-port}} $OPEN_SPECIMEN_DIR/app/ | xargs sed -i s/{{apphost-port}}/8280/g

chmod 774 $OPEN_SPECIMEN_DIR/app/bin/catalina.sh
chmod 774 $OPEN_SPECIMEN_DIR/app/bin/shutdown.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/bin/catalina.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/bin/shutdown.sh


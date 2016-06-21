#!/usr/bin/env bash

JAVA_PROCESS_ID=`pgrep java`

if [ "${JAVA_PROCESS_ID:-null}" != null ]; then
    echo "Cannot upgrade because java process is still running"
    exit 1
fi

OPEN_SPECIMEN_DIR=/local/openSpecimen

cp -R deploy $OPEN_SPECIMEN_DIR

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


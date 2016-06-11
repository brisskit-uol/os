#!/bin/bash

OPEN_SPECIMEN_DIR=/local/openSpecimen_v3_1

mv openspecimen_v3_1 $OPEN_SPECIMEN_DIR

setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/first_run_open_specimen.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/run_open_specimen.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/stop_open_specimen.sh
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/logs/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/work/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/webapps/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/plugins/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/osdata

chmod 774 $OPEN_SPECIMEN_DIR/app/bin/catalina.sh
chmod 774 $OPEN_SPECIMEN_DIR/app/bin/shutdown.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/bin/catalina.sh


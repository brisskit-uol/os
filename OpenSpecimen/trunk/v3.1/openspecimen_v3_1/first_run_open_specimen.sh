#!/bin/bash

OPEN_SPECIMEN_DIR=/local/openSpecimen_v3_1

echo "Starting Open Specimen for the first time..."
$OPEN_SPECIMEN_DIR/run_open_specimen.sh

echo "Waiting for sixty seconds to make sure it has time to complete..."
sleep 60

echo "Now stopping OpenSpecimen..."
$OPEN_SPECIMEN_DIR/stop_open_specimen.sh

setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/logs/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/work/
setfacl -R -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/webapps/

echo "\nAll done\n\nNow try starting it again"

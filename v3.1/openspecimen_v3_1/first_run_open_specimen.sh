#!/bin/bash

OPEN_SPECIMEN_DIR=/local/openSpecimen_v3_1

echo "Starting Open Specimen for the first time..."
$OPEN_SPECIMEN_DIR/run_open_specimen.sh

echo "Waiting for sixty seconds to make sure it has time to complete..."
sleep 60

echo "Now stopping OpenSpecimen..."
$OPEN_SPECIMEN_DIR/stop_open_specimen.sh

echo "Now fixing the incorrect Schema.xml"
cp $OPEN_SPECIMEN_DIR/fixed_db_2_0_schema.xml $OPEN_SPECIMEN_DIR/app/webapps/openspecimen/WEB-INF/classes/db/2.0/schema.xml

setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/logs/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/work/
setfacl -R -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/webapps/

echo "\nAll done\n\nNow try starting it again"

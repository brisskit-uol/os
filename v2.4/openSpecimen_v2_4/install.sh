#!/bin/bash

OPEN_SPECIMEN_DIR=/local/openSpecimen_v2_4

cd installable
unzip OpenSpecimen-2.4.zip
cd OpenSpecimen-2.4
cp $OPEN_SPECIMEN_DIR/fixed_install.sh ./install.sh
chmod 744 install.sh

nohup ./install.sh -dhost localhost -dport 3306 -dname openSpecimen -duser lampuser -dpass PeRin1 -dtype mysql -ahome $OPEN_SPECIMEN_DIR/app -ahost localhost -aport 8280 -adtype upgrade -adatadir $OPEN_SPECIMEN_DIR/app/os-data -aplugindir $OPEN_SPECIMEN_DIR/app/plugin-dir

mkdir $OPEN_SPECIMEN_DIR/app/plugin-dir/
mkdir $OPEN_SPECIMEN_DIR/app/os-data/

cp $OPEN_SPECIMEN_DIR/installable/os-le-1.0.0.jar $OPEN_SPECIMEN_DIR/app/plugin-dir/

cd $OPEN_SPECIMEN_DIR

setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/first_run_open_specimen.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/run_open_specimen.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/stop_open_specimen.sh
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/logs/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/work/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/webapps/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/plugin-dir/
setfacl -R -m u:wwwrun:rwx $OPEN_SPECIMEN_DIR/app/os-data

chmod 774 $OPEN_SPECIMEN_DIR/app/bin/catalina.sh
chmod 774 $OPEN_SPECIMEN_DIR/app/bin/shutdown.sh
setfacl -m u:wwwrun:rx $OPEN_SPECIMEN_DIR/app/bin/catalina.sh


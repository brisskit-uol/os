= Open Specimen Install

== Install process

1, Log onto the appropriate LAMP server.
2. `cd /local`
3. Download Zip file `openSpecimen_v2_4.zip`
4. Unzip the release: `unzip openSpecimen_v2_4.zip`
5. `cd openSpecimen_v2_4`
6. Run the command `./install.sh`
7. `sudo -u wwwrun ./first_run_open_specimen.sh`
8. `Check for process still running ps -ef|grep cat`
9. If the process is still running, kill it using `sudo -u wwwrun kill {process id}`
10. `sudo -u wwwrun ./run_open_specimen.sh`
11. Check it starts by running `tail -f app/logs/catalina.out`

== Using a back up of the Live database

The live database does not contain the right format for
workflow records.  Therefore, if using a backup from the
live database you will need do the following process.

1. Log onto mysql using `mysql -u lampuser -p`
2. Swicth the correct database using `use {database name}`
3. Run the following command:
{{{
update os_cp_workflows set workflows = '[{"name":"registerParticipant","view":"plugin-ui-resources/le/collect-specimens.html","ctrl":"leRegAndCollectSpecimensCtrl","data":{"boxOpts":{"dimension":{"rows":8,"columns":12},"compact":false}}}]';
}}}

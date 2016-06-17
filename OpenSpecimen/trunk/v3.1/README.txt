= Open Specimen Install

== Build Process

1. In this directory run `./build.sh`

== Install process

1. Log onto the appropriate LAMP server.
2. `cd /local`
3. Download this repository using the command `svn co https://svn.rcs.le.ac.uk/LCBRU/utilities/OpenSpecimen/trunk/v3.1/`
4. `cd v3.1`
5. Backup the database.
6. Update the database for compatability using the command `mysql -u {username} -p < db_update.sql {database_name}`
7. Run the command `./install.sh`
8. `Check for process still running ps -ef|grep cat`
9. If the process is still running, kill it using `kill {process id}`
10. `sudo -u wwwrun /local/openspecimen_v3_1/run_open_specimen.sh`
11. Check it starts by running `tail -f /local/openspecimen_v3_1/app/logs/catalina.out`

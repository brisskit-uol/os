= Open Specimen Install

*################# DO NOT USE YET - LE PLUGIN DOES NOT COMPILE ########################*

== Get Source

1. In this directory run `./doGet.sh`

== Build Process

1. In this directory run `./doBuild.sh`

== Install process

1. Log onto the appropriate LAMP server.
2. `cd /local`
3. Download this repository using the command `svn co https://svn.rcs.le.ac.uk/LCBRU/utilities/OpenSpecimen/trunk/v3.2/`
4. `cd v3.2`
5. Backup the database.
6. Run the command `./doInstall.sh`
7. If the process is still running, kill it using `sudo -u wwwrun kill {process id}`
8. `sudo -u wwwrun /local/openspecimen/run_open_specimen.sh`
9. Check it starts by running `tail -f /local/openspecimen/app/logs/catalina.out`
10. Check for errors by running `tail -f /local/openspecimen/openspecimen.log`

== Create a database from scratch use

{{{
CREATE DATABASE openspecimen CHARACTER SET utf8 COLLATE utf8_general_ci;
}}}

== Create a default user

1. Run the command `mysql -u {username} -p < db_createDefaultUser.sql {database_name}`

== Apache Settings

Add the following to the http.cong:
{{{

# Redirect if case is incorrect
RedirectMatch 301 (?i)/openspecimen /openspecimen/

# redirect from root
Redirect / /openspecimen

# Proxy to provide access to the JBoss Application Server
 ProxyPass /openspecimen http://localhost:8280/openspecimen timeout=180
 ProxyPassReverse /openspecimen http://localhost:8280/openspecimen
 ProxyTimeout 180

}}}
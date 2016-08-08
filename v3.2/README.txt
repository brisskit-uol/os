= Open Specimen Deployment

== Building the deployment package

=== Get source code

1. In this directory run `./doGet.sh`

=== Building the package

1. In this directory run `./doBuild.sh`

== Installation Prerequisites

=== Get installation Package

1. Log onto the appropriate LAMP server.
2. `cd /local`
3. Download this repository using the command `svn export https://svn.rcs.le.ac.uk/LCBRU/utilities/OpenSpecimen/trunk/{version}/`

=== Database for new installations

1. Create a database from scratch use

{{{
CREATE DATABASE openspecimen CHARACTER SET utf8 COLLATE utf8_general_ci;
}}}

2. Create a default user using the command `mysql -u {username} -p < db_createDefaultUser.sql {database_name}`

=== Apache Settings

Add the following to the http.conf:
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

=== Database updates for existing databases

1. When first upgrading to OpenSpecimen from CaTissue and above some changes may be required to the database.
2. Apply these changes by running the command: `mysql -u {username} -p < db_updates.sql {database_name}`

== Install process

1. Backup the database.
2. Run the command `/local/{version}/doInstall.sh` with the parameter "fresh" or "upgrade"
3. If the process is still running it will show you the process ID, kill it using `sudo -u wwwrun kill {process id}` and run the command again.
3. `sudo -u wwwrun /local/openspecimen/run_open_specimen.sh`
4. Check it starts by running `tail -f /local/openspecimen/app/logs/catalina.out`
5. Check for errors by running `tail -f /local/openspecimen/openspecimen.log`


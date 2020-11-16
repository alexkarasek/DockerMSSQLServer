#!/bin/bash
#start SQL Server
sh -c "
echo 'Sleeping 180 seconds before running setup script'
sleep 180
echo 'Starting setup script'
exec /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${1} -i /tmp/restore-database.sql
echo 'Finished setup script'
exit" &
exec /opt/mssql/bin/sqlservr
#tail -f /dev/null

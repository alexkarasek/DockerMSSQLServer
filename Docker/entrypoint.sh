#!/bin/bash
#start SQL Server
sh -c "
echo 'Sleeping 30 seconds before running setup script'
sleep 30
echo 'Starting setup script'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${1} -i /tmp/restore-database.sql
echo 'Finished setup script'
exit" &
exec /opt/mssql/bin/sqlservr

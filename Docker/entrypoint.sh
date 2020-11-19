 #!/bin/bash

#start SQL Server, start the script to restore the DB
sleep 20 & /opt/mssql/bin/sqlservr & sh /tmp/init.sh & tail -f /dev/null


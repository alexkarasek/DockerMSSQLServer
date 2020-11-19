echo "Checking SQL Server"
STATUS=$(/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -Q "SET NOCOUNT ON; SELECT 1" -W -h-1 )
 
while [ "$STATUS" != 1 ]
do
sleep 1s
 
echo "Checking SQL Server"
STATUS=$(/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -Q "SET NOCOUNT ON; SELECT 1" -W -h-1 )
done
 
echo "SQL UP!"

/opt/mssql-tools/bin/sqlcmd -S localhost -l 60 -U sa -P $SA_PASSWORD -i /tmp/restore-database.sql



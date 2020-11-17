RESTORE DATABASE WideWorldImportersDW FROM DISK = '/tmp/WideWorldImportersDW-Full.bak' 
WITH MOVE 'WWI_Primary' TO '/var/opt/mssql/data/WideWorldImportersDW.mdf', 
MOVE 'WWI_UserData' TO '/var/opt/mssql/data/WideWorldImportersDW_UserData.mdf', 
MOVE 'WWI_Log' TO '/var/opt/mssql/data/WideWorldImportersDW.ldf', 
MOVE 'WWIDW_InMemory_Data_1' TO '/var/opt/mssql/data/WideWorldImportersDW_InMemory_Data_1'


RESTORE DATABASE WideWorldImporters FROM DISK = '/tmp/WideWorldImporters-Full.bak' 
WITH MOVE 'WWI_Primary' TO '/var/opt/mssql/data/WideWorldImporters.mdf', 
MOVE 'WWI_UserData' TO '/var/opt/mssql/data/WideWorldImporters_UserData.mdf', 
MOVE 'WWI_Log' TO '/var/opt/mssql/data/WideWorldImporters.ldf', 
MOVE 'WWI_InMemory_Data_1' TO '/var/opt/mssql/data/WideWorldImporters_InMemory_Data_1'
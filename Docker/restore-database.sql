<<<<<<< HEAD
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
=======
RESTORE DATABASE [AdventureWorks] FROM DISK = '/tmp/AdventureWorks2017.bak'
WITH FILE = 1,
MOVE 'AdventureWorks2017' TO '/var/opt/mssql/data/AdventureWorks.mdf',
MOVE 'AdventureWorks2017_log' TO '/var/opt/mssql/data/AdventureWorks.ldf'
GO
>>>>>>> dbb13a945f57bce816612f78ab01c591408e52f6

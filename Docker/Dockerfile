FROM mcr.microsoft.com/mssql/server:2019-latest

COPY WideWorldImporters-Full.bak /tmp
COPY WideWorldImportersDW-Full.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp
COPY init.sh /tmp

ENV SA_PASSWORD=OcP2020123
ENV ACCEPT_EULA=Y
ENV MSSQL_AGENT_ENABLED=TRUE
ENV MSSQL_PID=DEVELOPER

CMD exec /bin/bash /tmp/entrypoint.sh $SA_PASSWORD  



# docker run --name sqlserver -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=OcP2020123' -e 'MSSQL_PID=Developer' -p 1433:1433 -d alexk002/sqlserver2019_demo:1

# az container create -g dockercontainerRG --name sql2019demo --image alexk002/sqlserver2019_demo:1  --cpu 1 --memory 3.5 --ports 1433 --ip-address Public
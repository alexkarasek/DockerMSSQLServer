FROM mcr.microsoft.com/mssql/server:2019-latest

COPY AdventureWorks2017.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp
COPY init.sh /tmp

ENV SA_PASSWORD=OcP2020123
ENV ACCEPT_EULA=Y
ENV MSSQL_AGENT_ENABLED=TRUE
ENV MSSQL_PID=DEVELOPER

CMD exec /bin/bash /tmp/entrypoint.sh $SA_PASSWORD  



# ddocker run --name sqlserver -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=OcP2020123' -e 'MSSQL_PID=Express' -p 1433:1433 -d
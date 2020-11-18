FROM mcr.microsoft.com/mssql/server:2019-latest

# COPY WideWorldImporters-Full.bak /tmp
# COPY WideWorldImportersDW-Full.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp
COPY init.sh /tmp
# COPY getfiles.sh /tmp

# Create app directory
# RUN mkdir -p /backups

# RUN chown mssql /backups

USER root

ADD https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImportersDW-Full.bak /tmp/WideWorldImportersDW-Full.bak
ADD https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImporters-Full.bak /tmp/WideWorldImporters-Full.bak

RUN chmod 775 -R /tmp

USER mssql

COPY AdventureWorks2017.bak /tmp
COPY restore-database.sql /tmp
COPY entrypoint.sh /tmp
COPY init.sh /tmp

ENV SA_PASSWORD=OcP2020123
ENV ACCEPT_EULA=Y
ENV MSSQL_AGENT_ENABLED=TRUE
ENV MSSQL_PID=DEVELOPER

CMD exec /bin/bash /tmp/entrypoint.sh $SA_PASSWORD 
# CMD exec /bin/bash /tmp/getfiles.sh  

# docker build . -t alexk002/sqlserver2019_demo:1

# docker run --name sqlserver -p 1433:1433 alexk002/sqlserver2019_demo:1

# docker run --name sqlserver -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=OcP2020123' -e 'MSSQL_PID=Developer' -p 1433:1433 -d alexk002/sqlserver2019_demo:1

# docker push alexk002/sqlserver2019_demo:1

# az container create -g dockercontainerRG --name sql2019demo --image alexk002/sqlserver2019_demo:1  --cpu 2 --memory 6 --ports 1433 --ip-address Public
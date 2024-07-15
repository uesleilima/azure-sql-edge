FROM mcr.microsoft.com/azure-sql-edge:1.0.7

RUN curl -L -s https://github.com/microsoft/go-sqlcmd/releases/download/v1.7.0/sqlcmd-linux-arm64.tar.bz2 -o /tmp/sqlcmd-linux-arm64.tar.bz2
RUN mkdir -p /opt/mssql-tools/bin && tar -xjf /tmp/sqlcmd-linux-arm64.tar.bz2 -C /opt/mssql-tools/bin

MAINTAINER uesleisantoslima@gmail.com
# Install MSSQL
set -x
curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/9/mssql-server-preview.repo
yum install -y mssql-server
MSSQL_PID=Developer ACCEPT_EULA=Y MSSQL_SA_PASSWORD="$(openssl rand -base64 32 | tr -- '+/' '-_')" /opt/mssql/bin/mssql-conf -n setup
curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/8/prod.repo
ACCEPT_EULA=Y yum install -y mssql-tools unixODBC-devel
echo '#!/bin/bash' > /etc/profile.d/mssql.sh
# shellcheck disable=SC2016
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> /etc/profile.d/mssql.sh
chmod a+x /etc/profile.d/mssql.sh
echo Enable SQL Server Agent...
/opt/mssql/bin/mssql-conf set sqlagent.enabled true
echo Installing SQL Server Full-Text Search...
yum install -y mssql-server-fts

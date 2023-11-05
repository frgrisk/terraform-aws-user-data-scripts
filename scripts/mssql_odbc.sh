#!/bin/bash
curl https://packages.microsoft.com/config/rhel/9.0/prod.repo > /etc/yum.repos.d/mssql-release.repo
yum remove unixODBC-utf16 unixODBC-utf16-devel #to avoid conflicts
ACCEPT_EULA=Y yum install -y msodbcsql18 unixODBC-devel

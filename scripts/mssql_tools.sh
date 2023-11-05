#!/bin/bash
set -e
yum install -y wget
mkdir -p /opt/mssql-tools/bin
cd /opt/mssql-tools/bin
GOSQLCMD_VERSION=v1.4.0
case "$(uname -m)" in \
  'aarch64') \
    arch='linux-arm64'; \
    sha256='27cbb52e9b56bcee31a98e9a2d509ad0c930ae6c22ece92be8c0b5425d17d8bd'; \
    ;; \
  'x86_64') \
    arch='linux-amd64'; \
    sha256='dcd1cec4fd531a2d5edd8d366c7da7cdcb60e4a55a601a2154ab14740fb072aa'; \
    ;; \
esac;
wget https://github.com/microsoft/go-sqlcmd/releases/download/$GOSQLCMD_VERSION/sqlcmd-$GOSQLCMD_VERSION-$arch.tar.bz2
dnf install -y bzip2
tar xvf sqlcmd-$GOSQLCMD_VERSION-$arch.tar.bz2
rm -f sqlcmd-$GOSQLCMD_VERSION-$arch.tar.bz2
# shellcheck disable=SC2016
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> /etc/profile.d/mssql.sh
chmod a+x /etc/profile.d/mssql.sh

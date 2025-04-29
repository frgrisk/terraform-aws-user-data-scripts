#!/bin/bash
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
if [ -f /etc/ssh/sshd_config.d/50-cloud-init.conf ]; then
  sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/50-cloud-init.conf
fi
systemctl restart sshd

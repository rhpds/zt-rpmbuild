#!/bin/sh
echo "Starting module called 02-bello" >> /tmp/progress.log

wget -P /root/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/bello-0.1.tar.gz
chown rhel: /root/downloads/bello-0.1.tar.gz

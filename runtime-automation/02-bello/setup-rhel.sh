#!/bin/sh
echo "Starting module called 02-bello" >> /tmp/progress.log

wget -P /home/rhel/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/bello-0.1.tar.gz
chown rhel: /home/rhel/downloads/bello-0.1.tar.gz

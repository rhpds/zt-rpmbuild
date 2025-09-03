#!/bin/sh
echo "Starting module called 04-pello" >> /tmp/progress.log

echo "downloading pello tarball"
wget -P /root/downloads \
    https://files.pythonhosted.org/packages/source/P/Pello/Pello-1.0.4.tar.gz
chown rhel: /root/downloads/Pello-1.0.4.tar.gz
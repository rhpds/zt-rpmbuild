#!/bin/sh
echo "Starting module called 04-pello" >> /tmp/progress.log

wget \
    --retry-connrefused \
    --directory-prefix /home/rhel/downloads \
    https://files.pythonhosted.org/packages/source/P/Pello/Pello-1.0.4.tar.gz

chown rhel: /home/rhel/downloads/Pello-1.0.4.tar.gz

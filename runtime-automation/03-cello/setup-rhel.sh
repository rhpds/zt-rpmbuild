#!/bin/sh
echo "Starting module called 03-cello" >> /tmp/progress.log

wget -P/root/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-1.0.tar.gz \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-output-first-patch.patch
chown rhel:/root/downloads/cello-1.0.tar.gz /root/downloads/cello-output-first-patch.patch
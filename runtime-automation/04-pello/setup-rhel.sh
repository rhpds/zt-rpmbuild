#!/bin/sh
echo "Starting module called 04-pello" >> /tmp/progress.log

subscription-manager repos --enable codeready-builder-for-rhel-10-x86_64-rpms

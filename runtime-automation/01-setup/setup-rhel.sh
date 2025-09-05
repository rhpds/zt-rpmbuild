#!/bin/sh
echo "Starting module called 01-setup" >> /tmp/progress.log

KATELLO=$(rpm -qa | grep katello-ca)

rpm -e $KATELLO
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force
dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm

sed -e '/^metalink=https:\/\/mirrors.fedoraproject.org\/metalink/ s/^/#/' \
    -e '/^#baseurl=http:/ s/http/https/' \
    -e '/^#baseurl=https:\/\/download.example/ s/^#//' \
    -e '/^baseurl=https:\/\/download.example/ s_https://download.example_https://dl.fedoraproject.org_' \
    -i /etc/yum.repos.d/epel*.repo

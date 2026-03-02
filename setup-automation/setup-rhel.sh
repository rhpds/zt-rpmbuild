#!/bin/bash

KATELLO=$(rpm -qa | grep katello-ca)

rpm -e $KATELLO
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

dnf config-manager --set-enabled codeready-builder-for-rhel-10-x86_64-rpms

dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm

sed -e '/^metalink=https:\/\/mirrors.fedoraproject.org\/metalink/ s/^/#/' \
    -e '/^#baseurl=http:/ s/http/https/' \
    -e '/^#baseurl=https:\/\/download.example/ s/^#//' \
    -e '/^baseurl=https:\/\/download.example/ s_https://download.example_https://dl.fedoraproject.org_' \
    -i /etc/yum.repos.d/epel*.repo

# dnf -y install bash-completion dnf-plugins-core nano tree vim-enhanced wget

# echo "giving rhel user sudo permission"
# echo 'rhel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/rhel

# echo "setting password"
# echo redhat | passwd --stdin rhel

# echo "configuring rhel user bashrc"
cat /root/.bashrc > /home/rhel/.bashrc

echo "creating rhel downloads directory"
mkdir -p /home/rhel/downloads
chown rhel: /home/rhel/downloads

wget -P /home/rhel/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/bello-0.1.tar.gz

wget -P/home/rhel/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-1.0.tar.gz \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-output-first-patch.patch

wget -P /home/rhel/downloads \
    https://files.pythonhosted.org/packages/source/P/Pello/Pello-1.0.4.tar.gz

chown -R rhel: /home/rhel/downloads
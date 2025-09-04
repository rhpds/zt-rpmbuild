#!/bin/bash

# dnf -y install bash-completion dnf-plugins-core nano tree vim-enhanced wget

echo "always ignore invalid-url rpmlint warnings"
mkdir /etc/rpmlint
echo 'addFilter("W: invalid-url")' >> /etc/rpmlint/invalid-url.config

# echo "giving rhel user sudo permission"
# echo 'rhel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/rhel

# echo "setting password"
# echo redhat | passwd --stdin rhel

# echo "configuring rhel user bashrc"
# cat /root/.bashrc > /root/.bashrc

echo "creating rhel downloads directory"
mkdir -p /root/downloads

wget -P /root/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/bello-0.1.tar.gz

wget -P/root/downloads \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-1.0.tar.gz \
    https://github.com/redhat-developer/rpm-packaging-guide/raw/master/example-code/cello-output-first-patch.patch

wget -P /root/downloads \
    https://files.pythonhosted.org/packages/source/P/Pello/Pello-1.0.4.tar.gz

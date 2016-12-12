#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

#http://www.liviubalan.com/vagrant-repair-default-dpkg-preconfigure-unable-to-re-open-stdin-no-such-file-or-directory-message
# Repair "==> default: stdin: is not a tty" message
sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile
# In order to avoid the message
# "==> default: dpkg-preconfigure: unable to re-open stdin: No such file or directory"
# use " > /dev/null 2>&1" in order to redirect stdout to /dev/null
# For more info see http://stackoverflow.com/questions/10508843/what-is-dev-null-21
 
echo 'Provisioning npm on virtual machine...'
echo `whoami`
yes| apt-get update > /dev/null 2>&1
yes | apt-get upgrade > /dev/null 2>&1
yes | apt-get install -y build-essential > /dev/null 2>&1
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
yes | apt-get install -y nodejs > /dev/null 2>&1


mkdir /home/ubuntu/.npm-global
chown -hR ubuntu:ubuntu /home/ubuntu/.npm-global


echo PATH=/home/ubuntu/.npm-global/bin:\$PATH >> /home/ubuntu/.profile
source /home/ubuntu/.profile

#setting python for node-gyp install 
#https://github.com/nodejs/node-gyp 


# sudo npm install -g ethereumjs-testrpc
# sudo npm install -g truffle
 

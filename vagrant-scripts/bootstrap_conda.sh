#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
#http://www.liviubalan.com/vagrant-repair-default-dpkg-preconfigure-unable-to-re-open-stdin-no-such-file-or-directory-message
# Repair "==> default: stdin: is not a tty" message
sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile
# In order to avoid the message
# "==> default: dpkg-preconfigure: unable to re-open stdin: No such file or directory"
# use " > /dev/null 2>&1" in order to redirect stdout to /dev/null
# For more info see http://stackoverflow.com/questions/10508843/what-is-dev-null-21
 
echo 'Provisioning conda on virtual machine...'


apt-get update > /dev/null 2>&1
# export HOME="/home/ubuntu"
#Setup Miniconda 
wget http://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O /home/ubuntu/miniconda.sh
bash /home/ubuntu/miniconda.sh -b -p /home/ubuntu/miniconda
export PATH="/home/ubuntu/miniconda/bin:$PATH"
# export PATH="$HOME/miniconda/bin:$PATH"
#Create a python 2.7 environment and set it as the default
conda create -n py27 python=2.7 fabric

echo PATH=/home/ubuntu/miniconda/envs/py27/bin:\$PATH >> /home/ubuntu/.profile
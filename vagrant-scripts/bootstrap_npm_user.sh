#!/usr/bin/env bash
sudo npm config set prefix '/home/ubuntu/.npm-global'
sudo npm config set python `which python`
sudo npm install -g bower
sudo npm install -g ethereumjs-testrpc
sudo npm install -g truffle
sudo npm install -g typescript
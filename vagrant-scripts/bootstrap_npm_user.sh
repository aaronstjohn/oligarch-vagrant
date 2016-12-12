#!/usr/bin/env bash
npm config set prefix '/home/ubuntu/.npm-global'
npm config set python `which python`
npm install -g bower
npm install -g ethereumjs-testrpc
npm install -g truffle
npm install -g typescript
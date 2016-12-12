#!/usr/bin/env bash
wget http://www.openfl.org/builds/haxe/haxe-3.2.1-linux-installer.tar.gz 
tar -zxvf haxe-3.2.1-linux-installer.tar.gz
chmod +x ./install-haxe.sh
yes | ./install-haxe.sh

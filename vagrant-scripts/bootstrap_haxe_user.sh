#!/usr/bin/env bash
sudo haxelib setup /usr/lib/haxe/lib/
sudo yes | haxelib install openfl
sudo yes | haxelib run openfl setup
sudo yes | haxelib install graphx 1.0.0
# sudo yes | haxelib install minject
sudo yes | haxelib git minject https://github.com/massiveinteractive/minject.git
sudo yes | haxelib git ash https://github.com/nadako/Ash-Haxe.git
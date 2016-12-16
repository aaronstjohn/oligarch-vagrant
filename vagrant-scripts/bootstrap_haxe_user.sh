#!/usr/bin/env bash
sudo haxelib setup /usr/lib/haxe/lib/
sudo yes | haxelib install openfl
sudo yes | haxelib run openfl setup
sudo yes | haxelib git graphx https://github.com/andywhite37/graphx.git
sudo yes | haxelib git tink_core https://github.com/haxetink/tink_core.git
# sudo yes | haxelib install minject
sudo yes | haxelib git minject https://github.com/massiveinteractive/minject.git
sudo yes | haxelib git ash https://github.com/nadako/Ash-Haxe.git
sudo yes | haxelib git hxmath https://github.com/tbrosman/hxmath.git 
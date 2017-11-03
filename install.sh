#!/bin/sh
folder="${HOME}/Library/Developer/Xcode/Templates/"
rm -rf $folder
if [ ! -x "$folder" ]; then
	#statements
	echo "create $folder"
	mkdir -p "$folder"
fi
rm -rf ./XcodeTemplate
git clone https://github.com/jackrex/XcodeTemplate.git
cp -R ./Keep\ Cocoa\ Touch\ Class.xctemplate $folder
pkill -x Xcode
rm -rf ./XcodeTemplate


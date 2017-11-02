#!/bin/sh
folder="${HOME}/Library/Developer/Xcode/Templates"
if [ ! -x "$folder" ]; then
	#statements
	echo "create $folder"
	mkdir -p "$folder"
fi

git clone https://github.com/jackrex/XcodeTemplate.git
cp -R ./XcodeTemplate/Keep\ Cocoa\ Touch\ Class.xctemplate $folder
pkill -x Xcode
rm -rf ./XcodeTemplate


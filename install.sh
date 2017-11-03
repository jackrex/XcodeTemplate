#!/bin/zsh
folder="${HOME}/Library/Developer/Xcode/Templates"
if [ ! -x "$folder" ]; then
	#statements
	echo "create $folder"
	mkdir -p "$folder"
fi
rm -rf ./XcodeTemplate
rm -rf $folder
git clone https://github.com/jackrex/XcodeTemplate.git
cp -R ./XcodeTemplate/Keep\ Cocoa\ Touch\ Class.xctemplate $folder
pkill -x Xcode
rm -rf ./XcodeTemplate


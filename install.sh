#!/bin/sh
folder="${HOME}/Library/Developer/Xcode/Templates"
if [ ! -x "$folder" ]; then
	#statements
	echo "create $folder"
	mkdir -p "$folder"
fi

cp -r Keep\ Cocoa\ Touch\ Class.xctemplate/ $folder
pkill -x Xcode


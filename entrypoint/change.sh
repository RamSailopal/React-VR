#!/bin/bash
if [[ "$1" == "" ]]
then
	"Please pass a download link as the first parameter"
	exit
fi
cd /home/testview/static_assets && wget "$1"
if [[ "$?" != "0" ]]
then
	exit
fi
file=$(awk -F '/' '{ print $NF }' <<< "$1")
sed -i "s@<Pano source={asset('.*')}/>@<Pano source={asset('"$file"')}/>@" /home/testview/index.vr.js

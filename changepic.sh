#!/bin/bash
if [[" $1" == "" ]]
then
	echo "Please enter a download link as the first parameter"
	exit
fi
docker exec -it reactvr /home/entrypoint/change.sh "$1"

#!/bin/bash
#
#  Simple script to kill and/or restart a node server
#  By Brian Moeskau
# 
#    Basic usage: sh kill.sh [-r] server-name
#

function usage {
	echo
	echo "usage: sh kill.sh [-r] server-name"
	echo
	echo "   -r: Automatically restart the server"
	echo
}

while getopts ":r" opt; do
	case $opt in
		r)
			restart=1
			shift
			;;
		\?)
			usage
			exit 1
	esac
done

SERVER=$1

if [ "$SERVER" = "" ]; then
	echo You must specify the filename of the server to kill
	usage
	exit 1
fi

PID=$(ps ax | grep "[n]ode $SERVER" | awk '{print $1}')

if [ "$PID" = "" ]; then
	echo $SERVER is not currently running
else
	echo Killing $SERVER...
	sudo kill -KILL $PID
fi

if [ "$restart" = "1" ]; then
	echo Starting $SERVER...
	sudo node $SERVER
fi
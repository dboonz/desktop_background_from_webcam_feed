#!/bin/bash 

if [[  $# <  2 ]]; then
    echo "Usage: $0 timeout script [script arguments]"
    echo ""
    echo " - timeout in seconds "
    echo "To run a certain script every N seconds during a Xsession, put this script in Preferences->Startup applications"
    exit
fi

timeout=$1

#remove timeout from argc
shift
script="$@"

$script

sleep $timeout

repeater.sh $timeout "$script"

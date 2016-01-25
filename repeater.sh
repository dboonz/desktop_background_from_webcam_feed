#!/bin/bash 

timeout=$1
script="$2"

$script

sleep $timeout

repeater.sh $timeout "$script"

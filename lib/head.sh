#!/bin/bash
source lib/variables.sh

if [ -z "$CFG" ]; then 
	source config/config.cfg
else
	source config/$CFG.cfg
fi

if [ -f $temporalfile ]; then
	source $temporalfile
fi 

function writeTempFile(){
	echo $1 >> $temporalfile
}

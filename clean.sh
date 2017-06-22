#!/bin/bash
source lib/variables.sh

function cleanEv(){
	if [ -f $temporalfile ]; then
		rm $temporalfile
	fi 
}

cleanEv;
#!/bin/bash
#
#----- FLUSHING CACHE
source clean.sh
source prehook.sh
source package.sh

# ---------------
source killjar.sh
source uploadjar.sh
source runjar.sh

# ---------
function join { local IFS="$1"; shift; echo "$*"; }

function loadOperations(){
		commands="";	
		if [[  ${#@} == 0 ]];then
				fallbackOperation;
				return;
		fi;	
		commands=$(join ";" $@);
		$commands;
};

function fallbackOperation(){
	stopJ uploadJ;runJ;
};


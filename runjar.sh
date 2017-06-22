#!/bin/bash
if [ -z "$CFG" ]; then 
	source config/config.cfg
else
	source config/$CFG.cfg
fi

if [ -z "$runjar" ]; then 
	source commands/runjar.sh
else
	source commands/$runjar.sh
fi


function runJ(){
	echo "[+] RUNNING "$sourceFile" IN SERVER";
	echo "Exec:"$runcommand;
	ssh -tty $user@$host -p$port $runcommand;
}
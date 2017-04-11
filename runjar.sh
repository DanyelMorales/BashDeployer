#!/bin/bash
if [ -z "$CFG" ]; then 
	source config/config.cfg
else
	source config/$CFG.cfg
fi
source commands/runjar.sh

function runJ(){
	echo "[+] RUNNING "$sourceFile" IN SERVER";
	echo "Exec:"$runcommand;
	ssh -tty $user@$host -p$port $runcommand;
}
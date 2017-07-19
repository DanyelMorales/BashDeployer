#!/bin/bash
source lib/head.sh

if [ -z "$nohupable" ] || [  "$nohupable" != 1  ]; then 
	nohupable="";
else
	nohupable="nohup";	
fi

if [ -z "$runjar" ]; then 
	source commands/runjar.sh
else
	source commands/$runjar.sh
fi

function runJ(){
	echo "====================================";
	echo "[+] RUNNING "$sourceFile" IN SERVER";
	echo "Exec:"$runcommand;
	echo "====================================";
	ssh -tty $user@$host -p$port $runcommand;
}
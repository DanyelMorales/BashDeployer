#!/bin/bash
source config/config.cfg
source commands/runjar.sh

function runJ(){
	echo "[+] RUNNING "$sourceFile" IN SERVER";
	echo "Exec:"$runcommand;
	ssh -tty $user@$host -p$port $runcommand;
}
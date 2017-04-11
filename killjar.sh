#!/bin/bash

if [ -z "$CFG" ]; then 
	source config/config.cfg
else
	source config/$CFG.cfg
fi

source commands/renamejar.sh
source commands/stopjar.sh
#commands
commands=$renameCommand"&&"$killCommand"&&exit"

function stopJ(){
	echo "[+] STOPING CURRENT "$sourceFile" IN SERVER";
	ssh -tty $user@$host -p$port $commands;$1;
}

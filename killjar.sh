#!/bin/bash
source config/config.cfg
source commands/renamejar.sh
source commands/stopjar.sh
#commands
commands=$renameCommand"&&"$killCommand"&&exit"

function stopJ(){
	echo "[+] STOPING CURRENT "$sourceFile" IN SERVER";
	ssh -tty $user@$host -p$port $commands;$1;
}

#!/bin/bash

source lib/head.sh
source commands/renamejar.sh
source commands/stopjar.sh
#commands
commands=$renameCommand"&&"$killCommand"&&exit"

function stopJ(){
	echo "[+] STOPING CURRENT "$sourceFile" IN SERVER";
	ssh -tty $user@$host -p$port $commands;$1;
}

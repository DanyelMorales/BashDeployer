#!/bin/bash

source lib/head.sh
function prehookJ(){
	echo "[+] Applying PreeHooking to "$sourceFile" IN SERVER";
	if [ -n "$preuploadhook" ]; then 
		source hooks/$preuploadhook.sh
	fi
}

prehookJ; 
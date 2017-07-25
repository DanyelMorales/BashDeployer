#!/bin/bash
source lib/head.sh

function uploadJ(){
	if [[ -z "$uploadDirectory" ]] || [[ $uploadDirectory == 0 ]]; then
		uploadDirectory="";
		else
		uploadDirectory="-r"
	fi
	
	echo "====================================";
	echo "[+] UPLOADING "$sourceFile" TO SERVER";
	echo "====================================";
	scp $uploadDirectory -P $port $sourcePath$sourceFile $user"@"$host":"$destPath;$1;
}
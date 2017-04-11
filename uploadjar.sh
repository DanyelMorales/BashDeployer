#!/bin/bash
if [ -z "$CFG" ]; then 
	source config/config.cfg
else
	source config/$CFG.cfg
fi

function uploadJ(){
	echo "[+] UPLOADING "$sourceFile" TO SERVER";
	scp -P $port $sourcePath$sourceFile $user"@"$host":"$destPath;$1;
}
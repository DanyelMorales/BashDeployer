#!/bin/bash
source lib/head.sh

function uploadJ(){
	echo "====================================";
	echo "[+] UPLOADING "$sourceFile" TO SERVER";
	echo "====================================";
	scp -P $port $sourcePath$sourceFile $user"@"$host":"$destPath;$1;
}
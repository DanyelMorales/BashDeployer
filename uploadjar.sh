#!/bin/bash
source lib/head.sh

function uploadJ(){
	echo "[+] UPLOADING "$sourceFile" TO SERVER";
	scp -P $port $sourcePath$sourceFile $user"@"$host":"$destPath;$1;
}
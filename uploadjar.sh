#!/bin/bash
source config/config.cfg

function uploadJ(){
	echo "[+] UPLOADING "$sourceFile" TO SERVER";
	scp -P $port $sourcePath$sourceFile $user"@"$host":"$destPath;$1;
}
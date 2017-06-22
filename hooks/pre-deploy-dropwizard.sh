#!/bin/bash
source lib/head.sh
if [ -n "$renameSourceFile" ]; then 

	if [ ! -f $sourcePath$renameSourceFile ]; then
		mv $sourcePath$sourceFile $sourcePath$renameSourceFile
	fi
	writeTempFile "sourceFile=$renameSourceFile";
fi
	

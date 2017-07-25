#!/bin/bash
source lib/head.sh
function printPackagerTitle(){
	echo "====================================";
	echo -e "[+] "$1;
	echo "====================================";
};

function invokePackMod()
{
	methodDo="do_"$1;
	methodTitle="getTitle_"$1;
	shift;
	title=$($methodTitle);
	printPackagerTitle $title;
	$methodDo $@;
};

function prePackage(){
	if [[ -z "$packager" ]]; then
		return;
	fi	
	
	if [[ -z "$packageDependencies" ]]; then
		packageDependencies=();
	fi
	
	packagerMod="./commands/packager/"$packager".sh";
	if [[ ! -e $packagerMod ]]; then
		return;
	fi;
	
	source $packagerMod;
	invokePackMod $packager "${packageDependencies[@]}";
};

prePackage;
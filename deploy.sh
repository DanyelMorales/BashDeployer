#/bin/bash
export CFG=$1;
source ./lib/main.sh
# Stop Jar on Server then upload our new jar and finally run with nohup
echo "====================================";
echo  "[*] DEPLOYING"$sourceFile" TO REMOTE->"$host;


if [[ -z "$operations" ]]; then
	tasks=();
else
	tasks=${operations[@]};
fi

loadOperations ${tasks[@]};
echo "============ DEPLOY SUCCESSFUL OF "$sourceFile;
echo "====================================";
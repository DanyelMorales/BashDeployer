#/bin/bash
export CFG=$1;
source ./lib/main.sh
# Stop Jar on Server then upload our new jar and finally run with nohup
echo "====================================";
echo  "[*] DEPLOYING"$sourceFile" TO REMOTE->"$host;


if [[ -z "$operations" ]]; then
	tasks=("stop" "upload" "run");
else
	tasks=${operations[@]};
fi

for task in ${tasks[@]}; do
	$task"J";
done;

echo "============ DEPLOY SUCCESSFUL OF "$sourceFile;
echo "====================================";
function mergeSTBranch(){
	cd $1;
	git checkout $2;
	git merge $3;
	git branch -m $3 $3"_DONE";
}

function renameSTBranch(){
	echo "====================================";
	echo "Repo "$1;
	echo "====================================";
	echo "¿Seguro que deseas hacer MERGE y renombrar a DONE? [Y/N]";
	echo "Dimelo:";
	read resp;

	if [ $resp == "Y" ];then
		mergeSTBranch $1 $2 $3
	fi
}

function batchBranchingST()
{
	solutions=$1;
	mainBranch=$2;
	slaveBranch=$3;
	
	for solution in ${solutions[@]}; do
		renameSTBranch $solution $2 $3;
	done;
}
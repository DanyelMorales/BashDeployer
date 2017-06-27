function applyMerging(){
	cd $1;
	git checkout $2;
	git merge $3;
	git branch -d $3;
}

function mergeBranch(){
	echo "====================================";
	echo "Repo "$1;
	echo "====================================";
	echo "¿Seguro que deseas hacer merge y borrar la rama esclava? [Y/N]";
	echo "Dimelo:";
	read resp;

	if [ $resp == "Y" ];then
		applyMerging $1 $2 $3
	fi
}

function batchMerging()
{
	solutions=$1;
	mainBranch=$2;
	slaveBranch=$3;
	
	for solution in ${solutions[@]}; do
		mergeBranch $solution $2 $3;
	done;
}
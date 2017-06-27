function applyNewBranch(){
	cd $1;
	git checkout $2;
	git checkout -b $3;
}

function makeBranch(){
	echo "====================================";
	echo "Repo "$1;
	echo "====================================";
	echo "¿Seguro que deseas crear una nueva rama? [Y/N]";
	echo "Dimelo:";
	read resp;

	if [ $resp == "Y" ];then
		applyNewBranch $1 $2 $3
	fi
}

function batchBranching()
{
	solutions=$1;
	mainBranch=$2;
	slaveBranch=$3;
	
	for solution in ${solutions[@]}; do
		makeBranch $solution $2 $3;
	done;
}
function do_plarx()
{
	for file in  "$@"; do
		 plarx create -f $file -n  $(basename "$file")
	done
};

function getTitle_plarx(){
	echo "PLARX PACKAGE PROCESS \n";
};
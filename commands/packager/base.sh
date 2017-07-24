function do_base()
{
	buf=();
	for file__ in  $@; do
		echo $(basename "$file__");
	done
};

function getTitle_base(){
	echo "BASE_PACKAGE_PROCESS";
};
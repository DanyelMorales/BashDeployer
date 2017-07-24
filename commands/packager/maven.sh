function do_maven()
{
	for file in  "$@"; do
		mvn -DskipTests  package -f $file&&mvn -DskipTests  install -f $file
	done

};

function getTitle_maven(){
	echo "MAVEN PACKAGE PROCESS \n";
};
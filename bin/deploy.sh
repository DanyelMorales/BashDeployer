#/bin/bash
empaquetador="packages"
if [ -n "$2" ]; then 
	empaquetador=$2;
fi
./$empaquetador.bat; cd ./Deployment/; ./argdeploy.sh $1

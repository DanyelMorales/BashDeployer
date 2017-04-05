#!/bin/bash
#
# @author Daniel Vera Morales <dvera at sunset.com.mx>
#
source killjar.sh 
source uploadjar.sh 
source runjar.sh 

# Stop Jar on Server then upload our new jar and finally run with nohup
echo "============ DEPLOYING "$sourceFile" TO REMOTE->"$host;
stopJ uploadJ;runJ;
echo "============ DEPLOY SUCCESSFUL OF "$sourceFile;
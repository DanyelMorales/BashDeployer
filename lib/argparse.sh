#!/bin/bash
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -c|--config)
    CFG="$2"
    shift
    ;;
    -k|--kill)
    KILL=YES
    shift
    ;;
    -u|--upload)
    UPLOAD=YES
    shift
    ;;
    -r|--run)
    RUN=YES
    shift
    ;;
    *)
    ;;
esac
shift
done

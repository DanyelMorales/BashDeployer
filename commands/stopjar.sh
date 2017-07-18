#!/bin/bash

if [ -z "$killByPort" ]; then 
	killCommand="pgrep -f "$kewyword" | xargs sudo kill -9;";
else 
	killCommand="ss -ltpn 'sport = :"$killByPort"' | grep 'users:' | sed -r -e  's/.*users:((.*,(.*),.*))/\3/' | xargs sudo kill -9";
fi

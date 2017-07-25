#!/bin/bash
#
#----- FLUSHING CACHE
source lib/mod/clean.sh
source lib/mod/prehook.sh
source lib/mod/package.sh

# ---------------
source lib/mod/killjar.sh
source lib/mod/uploadjar.sh
source lib/mod/runjar.sh

# ---------
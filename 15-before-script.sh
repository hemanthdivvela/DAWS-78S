#/bin/bash

COURSE="dEVOPS FROM CURRENT SCRIPT"
echo "Before calling other script, COURSE: $COURSE"
echo "Process id of current shell-script: $$"

#./16-after-script.sh
source ./16-after-script.sh
echo "Before calling other script, COURSE: $COURSE"
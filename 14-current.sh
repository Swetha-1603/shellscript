#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"
   # ./15-other.sh
   source./15-other.sh
echo "after calling other script, course: $COURSE"
#!/bin/bash
# (cc) sgKIM, 2014

sleepTime=$1
shift
jobsID=$*

ALL_DONE=0
while [ $ALL_DONE -eq 0 ]; do
	sleep ${sleepTime}
	ALL_DONE=1
	for id in ${jobsID[@]}; do
		VAL=$(condor_q ${id} | wc -l)
		if [ $VAL -eq 5 ]; then
		ALL_DONE=0
		fi
	done
done

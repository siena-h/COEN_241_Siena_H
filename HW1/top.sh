#!/bin/bash

#Shell script for running top in background of sysbench tests in order to determine user vs. kernel utilization, 
#results of top are written to files labeled top<iteration num>.txt at the approximate midpoint of each test done in cpu.sh
#$1 represents half the time required for a single test, $2 represents the full time for a single test, and $3 represents the total time of all tests running

i=0
n=1
iter=$(($3/$2))
while [ $i -lt $iter ]
do
	sleep $1
	top -b -n 1 > "top$i.txt"
	sleep $2
	i=$(($i+$n))
done

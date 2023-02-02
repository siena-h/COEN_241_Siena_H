#!/bin/bash

#Shell script for running top in background of sysbench tests in order to determine user vs. kernel utilization, 
#top is written to files labeled top<iteration num>.txt for later perusal for desired max test time $2 (iterations of $1 sec periods)

i=0
n=1
while [ $i -lt $2 ]
do
	top -b -n 1 > "top$i.txt"
	sleep $1
	i=$(($i+$n))
done

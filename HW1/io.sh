#Name: Siena Hanna
#File: Test file for HW1 Experiments: fileio
#Arguments: single argument, delay between tests in seconds (chosen for easy recording of results)
#Date: 01/29/23

#!/bin/bash

echo "SEQUENTIAL WRITE TEST\n"

sh mode.sh seqwr 1G
sleep $1
sh mode.sh seqwr 2G
sleep $1
sh mode.sh seqwr 4G
sleep $1

echo "SEQUENTIAL REWRITE TEST\n"

sh mode.sh seqrewr 1G
sleep $1
sh mode.sh seqrewr 2G
sleep $1
sh mode.sh seqrewr 4G
sleep $1

echo "SEQUENTIAL READ TEST\n"

sh mode.sh seqrd 1G
sleep $1
sh mode.sh seqrd 2G
sleep $1
sh mode.sh seqrd 4G
sleep $1

echo "RANDOM READ TEST\n"

sh mode.sh rndrd 1G
sleep $1
sh mode.sh rndrd 2G
sleep $1
sh mode.sh rndrd 4G
sleep $1

echo "RANDOM WRITE TEST\n"

sh mode.sh rndwr 1G
sleep $1
sh mode.sh rndwr 2G
sleep $1
sh mode.sh rndwr 4G
sleep $1

echo "COMBINED RANDOM READ/WRITE TEST\n"

sh mode.sh rndrw 1G
sleep $1
sh mode.sh rndrw 2G
sleep $1
sh mode.sh rndrw 4G
sleep $1



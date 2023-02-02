#!/bin/bash
#Siena Hanna
#Shell program for fileio tests. First argument to sh io.sh is the test mode (ex: rndrw), second argument is size (ex: "1G")
#call formatting: sh mode.sh <fileio mode> <total file size>


echo "TEST START: $2, default file number (128 Files)"

sysbench --test=fileio --file-total-size=$2 --file-test-mode=$1 prepare

sysbench --test=fileio --file-total-size=$2 --file-test-mode=$1 run

sleep 5

sysbench --test=fileio --file-total-size=$2 --file-test-mode=$1 cleanup

f=1
inc=4 #file number quadruples each iteration, up to 256
while [ $f -lt 256 ]
do
	sleep 10 #so I can run sync on my computer to clear cache between tests
	echo "$2, $f file(s)\n"
	sysbench --test=fileio --file-total-size=$2 --file-num=$f --file-test-mode=$1 prepare
	sysbench --test=fileio --file-total-size=$2 --file-num=$f --file-test-mode=$1 run
	sleep 5
	sysbench --test=fileio --file-total-size=$2 --file-num=$f --file-test-mode=$1 cleanup

	f=$(($f * $inc))
#	echo "NEW f: $f\n"
done


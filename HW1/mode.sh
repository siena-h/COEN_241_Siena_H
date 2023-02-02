#!/bin/bash
#Siena Hanna
#Shell program for fileio tests. First argument to sh mode.sh is the test mode (ex: rndrw), second argument is total file size (ex: "1G")
#formatting: sh mode.sh <fileio mode> <total file size>
#Time set to 2 mins maximum (120 seconds). I am running 3 tests per total file size for 5 file sizes on 6 modes (for three scenarios).

echo "TEST START: $2, default file number (128 Files)"

sysbench --test=fileio --file-total-size=$2 --file-test-mode=$1 prepare

sysbench --test=fileio --max-time=180 --file-total-size=$2 --file-test-mode=$1 run

sleep 5

sysbench --test=fileio --file-total-size=$2 --file-test-mode=$1 cleanup

f=1
inc=16 #file size increases by a factor of 16
while [ $f -le 256 ]
do
	sleep 10 #so I can run sync on my computer to clear cache between tests
	echo "$2, $f file(s)\n"
	sysbench --test=fileio --file-total-size=$2 --file-num=$f --file-test-mode=$1 prepare
	sysbench --test=fileio --max-time=180 --file-total-size=$2 --file-num=$f --file-test-mode=$1 run
	sleep 5
	sysbench --test=fileio --file-total-size=$2 --file-num=$f --file-test-mode=$1 cleanup

	f=$(($f * $inc))
#	echo "NEW f: $f\n"
done


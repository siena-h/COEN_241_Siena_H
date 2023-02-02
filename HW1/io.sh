#Name: Siena Hanna
#File: Test file for HW1 Experiments: fileio
#Arguments: single argument, delay between tests in seconds (chosen for easy recording of results)
#Run format: sh io.sh <delay>
#Date: 01/29/23
#Test Description: This runs mode.sh with all 6 fileio modes for file sizes of 256MB, 512MB, 1GB, and 2GB (five tests each) and creates files from each test for ease of documentation. 
#!/bin/bash

echo "SEQUENTIAL WRITE TEST\n"

i=0
inc=1
iter=5
while [ $i -lt $iter ]
do
	sh mode.sh seqwr 1G > seqwr/seqwr1G$i.txt
	sleep $1
	sh mode.sh seqwr 2G > seqwr/seqwr2G$i.txt
	sleep $1
	sh mode.sh seqwr 256M > seqwr/seqwr256M$i.txt
	sleep $1
	sh mode.sh seqwr 512M > seqwr/seqwr512M$i.txt
	i=$(($i+$inc))
	sleep $1
done

echo "SEQUENTIAL REWRITE TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh seqrewr 1G > seqrewr/seqrewr1G$i.txt
	sleep $1
	sh mode.sh seqrewr 2G > seqrewr/seqrewr2G$i.txt
	sleep $1
	sh mode.sh seqrewr 256M > seqrewr/seqrewr256M$i.txt
	sleep $1
	sh mode.sh seqrewr 512M > seqrewr/seqrewr512M$i.txt
	sleep $1
	i=$(($i+$inc))
done

echo "SEQUENTIAL READ TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh seqrd 1G > seqrd/seqrd1G$i.txt
	sleep $1
	sh mode.sh seqrd 2G > seqrd/seqrd2G$i.txt
	sleep $1
	sh mode.sh seqrd 256M > seqrd/seqrd256M$i.txt
	sleep $1
	sh mode.sh seqrd 512M > seqrd/seqrd512M$i.txt
	sleep $1
	i=$(($i+$inc))
done

echo "RANDOM READ TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh rndrd 1G > rndrd/rndrd1G$i.txt
	sleep $1
	sh mode.sh rndrd 2G > rndrd/rndrd2G$i.txt
	sleep $1
	sh mode.sh rndrd 256M > rndrd/rndrd256M$i.txt
	sleep $1
	sh mode.sh rndrd 512M > rndrd/rndrd512M$i.txt
	sleep $1
	i=$(($i+$inc))
done
echo "RANDOM WRITE TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh rndwr 1G > rndwr/rndwr1G$i.txt
	sleep $1
	sh mode.sh rndwr 2G > rndwr/rndwr2G$i.txt
	sleep $1
	sh mode.sh rndwr 256M > rndwr/rndwr256M$i.txt
	sleep $1
	sh mode.sh rndwr 512M > rndwr/rndwr512M$i.txt
	sleep $1
	i=$(($i+$inc))
done

echo "COMBINED RANDOM READ/WRITE TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh rndwr 1G > rndrw/rndrw1G$i.txt
	sleep $1
	sh mode.sh rndrw 2G > rndrw/rndrw2G$i.txt
	sleep $1
	sh mode.sh rndrw 256M > rndrw/rndrw256M$i.txt
	sleep $1
	sh mode.sh rndrw 512M > rndrw/rndrw512M$i.txt
	sleep $1
	i=$(($i+$inc))
done


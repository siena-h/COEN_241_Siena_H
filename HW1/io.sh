#Name: Siena Hanna
#File: Test file for HW1 Experiments: fileio
#Arguments: single argument, delay between tests in seconds (chosen for easy recording of results)
#Run format: sh io.sh <delay>
#Date: 01/29/23
#Test Description: This runs mode.sh with different fileio modes for total file size of $2, sleeping for $1 time between tests in order to enable usage of Sync on host, and doing each test 5 times
#!/bin/bash

echo "SEQUENTIAL WRITE TEST\n"

i=0
inc=1
iter=5
while [ $i -lt $iter ]
do
	#sh mode.sh seqwr $2 # > seqwr/seqwr$2$i.txt
	i=$(($i+$inc))
	echo "Iteration ending. Sync now!"
	sleep $1
done

#echo "SEQUENTIAL REWRITE TEST\n"

#i=0
#while [ $i -lt $iter ]
#do
#	sh mode.sh seqrewr $2 #> seqrewr/seqrewr$2$i.txt
#	echo "Iteration ending. Sync now!"
#	sleep $1
#	i=$(($i+$inc))
#done

echo "SEQUENTIAL READ TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh seqrd $2 #> seqrd/seqrd$2$i.txt
	echo "Iteration ending. Sync now!"
	sleep $1
	i=$(($i+$inc))
done

echo "RANDOM READ TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh rndrd $2 #> rndrd/rndr$2$i.txt
	echo "Iteration ending. Sync now!"
	sleep $1
	i=$(($i+$inc))
done
echo "RANDOM WRITE TEST\n"

i=0
while [ $i -lt $iter ]
do
	sh mode.sh rndwr $2 #> rndwr/rndwr$2$i.txt
	echo "Iteration ending. Sync now!"
	i=$(($i+$inc))
	sleep $1
done

#echo "COMBINED RANDOM READ/WRITE TEST\n"

#i=0
#while [ $i -lt $iter ]
#do
#	sh mode.sh rndrw $2 #> rndrw/rndrw2G$i.txt

#	echo "Iteration ending. Sync now!"
#	sleep $1
#	i=$(($i+$inc))
#done

echo "\n\n\n\n\nTESTS COMPLETE\n\n\n\n\n"

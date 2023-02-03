#Format for running: sh cpu.sh <single test time> <half of single test time> <max primes>

n=5 #number of tests will always be 5

sh top.sh $2 $1 $4 & #run top.sh in background with arguments <half of single test time> <single test time> <num threads>

i=0
inc=1
while [ $i -lt $n ]
do
	sysbench cpu --num-threads=$4 --cpu-max-prime=$3 --time=$1 run
	i=$(($i+$inc))
done


#Format for running: sh cpu.sh <single test time> <half of single test time> <max primes>

n=5 #number of tests

sh top.sh $2 $1 $((n*$1)) & #run top.sh in background with arguments <half of single test time> <single test time> <total test time>

i=0
while [ $i -lt $n ]
do
	sysbench cpu --cpu-max-prime=$3 --time=$1 run
done


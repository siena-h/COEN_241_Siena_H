#NOT FOR RUNNING EXPERIMENTS
#Siena Hanna
#automates the movement of top output files to the proper directory, for post-experiment organization
#call: sh .sh <threads> <memory>

i=0
end=5
inc=1
while [ $i -lt $end ]
do
	mv top$1$i.txt $2/top$1$i.txt
	i=$(($i+$inc))
done

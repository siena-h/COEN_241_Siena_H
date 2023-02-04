
#call: sh .sh <mode> <size>


i=0
end=5
inc=1
while [ $i -lt $end ]
do
	mv $1$2$i.txt q1024io/$1$2$i.txt
	i=$(($i+$inc))
done

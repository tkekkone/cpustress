#!/bin/bash
result=$1
cores=$(nproc)
while [ $result -ge $1 ]; do
	if [ $result -ne $1 ]
	then
		sleep 20s;
	fi
	runresult=$(sysbench --threads=$cores --time=30 cpu run)
	echo "$runresult"
	result=$(echo "$runresult" | grep -i "total number of events"| awk '{print $5}')
	echo "Result was $result."
done



#!/bin/bash

for i in `seq 2` 
do
	#python script goes here
	#should just be able to write a shell command here
	#interstingly in C it would be the executable but in python 
	#we can just use the python executable
	#one add on is to have it commit the file itself
	#actually this is not even an easy thing to do
	iters=`cat ./commit_number`
	python ./quone.py 
	git add quone.py &> /dev/null
	git commit -m "commit #$iters" &> /dev/null 
	git push origin master &> /dev/null
	iters=`expr $iters + 1`
	echo "$iters" > ./commit_number

	#next steps--update WHENEVER push is sent, no matter what!
	#right now, there still has the potential to be out of date
	#perhaps, we can fix it using a github API call--via curl to get the
	#commit number first
done


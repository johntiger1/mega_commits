#!/bin/bash

for i in `seq 10` 
do
	#python script goes here
	#should just be able to write a shell command here
	#interstingly in C it would be the executable but in python 
	#we can just use the python executable
	#one add on is to have it commit the file itself
	#actually this is not even an easy thing to do
	python ./quone.py 
	git add quone.py &> /dev/null
	git commit -m "commit #x" &> /dev/null 
	git push origin master &> /dev/null
done


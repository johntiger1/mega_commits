#!/bin/bash

for i in `seq 10` 
do
	#python script goes here
	#should just be able to write a shell command here
	#interstingly in C it would be the executable but in python 
	#we can just use the python executable
	#one add on is to have it commit the file itself
	python ./quone.py
	git add quone.py
	git commit -m "commit #x"
	git push origin master
done


#!/bin/bash

#Script to copy file
cmd_args=$#
echo "num of args: $cmd_args"
if [ $cmd_args -eq 0 ]
then
	daily=$(date +"%Y%m%d")
	filename="Antwak$daily.csv"
	sourcepath="/home/AliviaB/SourceFolder/$filename"
	destinationpath="/home/AliviaB/DestinationFolder"
	if [ -f $sourcepath ]
	then
		mv $sourcepath $destinationpath
		echo "********************************"
		echo "File copied Successfully"
		echo "********************************"
		mail -s "File copied Successfully: "+$filename aliviabanerjee@gmail.com
	else
		mail -s "File is not found: "+$filename aliviabanerjee@gmail.com
	fi
elif [ $cmd_args -eq 1 ]
then
	daily=$1
	filename="Antwak$daily.csv"
	sourcepath="home/AliviaB/SourceFolder/$filename"
	destinationpath="/home/AliviaB/DestinationFolder/$filename"
	if [ -f $sourcepath ]
	then
		mv $sourcepath $destinationpath
		echo "*******************************"
		echo "File copied Successfully"
		echo "*******************************"
		mail -s "File copied Successfully: "+$filename aliviabanerjee@gmail.com
	else 
		mail -s "File is not found: "+$filename aliviabanerjee@gmail.com
	fi
else
	echo "**************************************************"
	echo "Please check the number of arguments passed"
	echo "**************************************************"
fi
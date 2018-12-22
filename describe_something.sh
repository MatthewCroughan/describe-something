#!/bin/bash
Output_Type=1
Determiner=$(sort -R ./determiner.txt | awk 'NR <= 1 { print $1 }') 	
if [ $Determiner == "The" ]; then
	echo "Determiner is the"
	Output_Type=2
	Quantity=$(sort -R ./quantity.txt | awk 'NR <= 1 { print $1 }')
	
	fi
if [ $Determiner == "An" ]; then
	echo "Determiner is An"
	Output_Type=3
	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Quality=$(sort -R ./quality.txt | awk 'NR <= 1 { print $1 }') 	
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Size=$(sort -R ./size.txt | awk 'NR <= 1 { print $1 }')   	
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Age=$(sort -R ./age.txt | awk 'NR <= 1 { print $1 }')
	echo "Age is " $Age
	if [ "$Output_Type" == "3" ];then
		while [ "$Age" == "young" ]; do
		echo "in loop"
	 	Age=$(sort -R ./age.txt | awk 'NR <= 1 { print $1 }')
		echo "Age 2 is " $Age
		done  
	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Shape=$(sort -R ./shape.txt | awk 'NR <= 1 { print $1 }')   	
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Color=$(sort -R ./colour.txt | awk 'NR <= 1 { print $1 }')  	
	echo "Colour is " $Color
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Properadjective=$(sort -R ./properadjective.txt | awk 'NR <= 1 { print $1 }')  
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Purpose=$(sort -R ./purpose.txt | awk 'NR <= 1 { print $1 }')  
#	fi

#if [ $((1 + RANDOM % 2)) == "2" ];then
	Noun=$(sort -R ./noun.txt | awk 'NR <= 1 { print $1 }')  
#	fi

if [ "$Output_Type" == "1" ];then
	Output=$(echo $Determiner" "$Quality" "$Size" "$Age" "$Color" "$Purpose" "$Noun)
	echo $Output 
	fi

if [ "$Output_Type" == "2" ];then
        Output=$(echo $Determiner" "$Quantity" "$Quality" "$Size" "$Age" "$Color" "$Purpose" "$Noun)
        echo $Output 
        fi

if [ "$Output_Type" == "3" ];then
        Output=$(echo $Determiner" "$Age" "$Color" "$Purpose" "$Noun)
        echo $Output 
        fi


#!/bin/bash
#
#MODS
#
#

#We are going to define some bitches and variables!

#We define the dt variable, which is a date command to get the day, hour and minutes, also the year
dt=`date +%Y%m%d-%T`

#We define the Filename variable, which evades the issue to create a duplicated filename and overwritte the output
filename=mods-result-$dt.txt

#Just in case, because im dumb and lazy, we delete the last.file
rm last.file

#We copy out filename to the last.file
echo "$filename" >> last.file

#This is kinda some basic check, because the output of some commands can give a 'more' output, and freezes the execution.
coltty=`tput cols`
rowtty=`tput lines`

if [[ coltty -lt 105  ]]
	then
		echo "ERROR: TTY Size is smaller than required!"
		echo "ERROR: Fatal error, im sad :("
		echo "ERROR: TTY $coltty x $rowtty"
		echo "ERROR: Im dying, returing to the parent process."
		exit
	fi
if [[ rowtty -lt 40 ]]
	then
		echo "ERROR: TTY Size is smaller than required!"
		echo "ERROR: Fatal error, im sad :("
		echo "ERROR: TTY $coltty x $rowtty"
		echo "ERROR: Im dying, returning to the parent process"
		exit 1
	fi

echo "INFO: TTY SIZE OK"
echo "INFO: $dt"
echo "INFO: $filename"
echo 
echo "###################################" >> /home/mods/results/$filename.txt
echo "#Mighty Online Diagnostic script  #" >> /home/mods/results/$filename.txt
echo "#Coded by blzrx, for internal use #" >> /home/mods/results/$filename.txt
echo "#Code available on the following  #" >> /home/mods/results/$filename.txt
echo "#GITHUB Page:                     #" >> /home/mods/results/$filename.txt
echo "#https://github.com/blzrx         #" >> /home/mods/results/$filename.txt
echo "###################################" >> /home/mods/results/$filename.txt
echo "#######    Version 1.1     ########" >> /home/mods/results/$filename.txt
echo "###################################" >> /home/mods/results/$filename.txt
echo "" >> /home/mods/results/$filename.txt
echo "" >> /home/mods/results/$filename.txt

#We start calling out expect scripts

echo "########################PUT HERE YOU DEVICE HOSTNAME#####################################" >> /home/mods/results/$filename.txt
expect ./fuentes/p1corecrscnt.sh >> /home/mods/results/$filename.txt
echo "###########################################################################" >> /home/mods/results/$filename.txt
echo "INFO: Rutine PUT HERE YOU DEVICE HOSTNAME Complete!"

#And do so on for every expect script

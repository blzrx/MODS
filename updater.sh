#!/bin/bash
#
# DERP DERP
# This just copies the output file to a folder.

filen=`cat last.file`

echo -e "Checking privilege level"
echo -e ""
	if [[ ${UID} -ne 0 ]]
		then
		echo -e "ERROR: Please run me as root :( !"
		echo -e "Exiting..."
		echo -e ""
		fi
	
	if [[ ${UID} -eq 0 ]]
		then
		cp /home/mods/results/$filen /var/www/
		echo -e "File copied!"
		echo -e "Exiting..."
		echo -e ""
		fi

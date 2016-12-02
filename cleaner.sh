#!/bin/bash
#
#MODS cleaner!
#

filename=`cat last.file`

#Some common Cisco trash output lines

ex +g/User/d -cwq /home/mods/results/$filename
ex +g/Password:/d -cwq /home/mods/results/$filename
ex +g/Trying/d -cwq /home/mods/results/$filename
ex +g/spawn/d -cwq /home/mods/results/$filename
ex +g/Connected/d -cwq /home/mods/results/$filename
ex +g/Escape/d -cwq /home/mods/results/$filename

#EXAMPLE
#If you want to delete the EXEC word in the file, put it between +g/ and /d, like this
#ex +g/EXEC/d -cwq /home/mods/results/$filename

echo ""
echo "File $filename cleaned!"
echo "Exiting..."

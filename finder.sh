#!/bin/sh

if [ "$#" -lt 2 ] 
then
	echo "Error: Two Arguments Required"
	exit 1
fi

filedir="$1"
searchstr="$2"

if [ ! -d "$filedir" ] 
then
	echo "Error: $filedir is not a Directory"
	exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
matchinglines=$(grep -rn "$searchstr" "$filesdir" 2>/dev/null | wc -l)
echo "The number of files are $numfiles and the number of matching lines are $matchinglines"

exit 0

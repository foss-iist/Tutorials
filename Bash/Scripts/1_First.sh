#!/bin/sh

# First
# This file looks through all the files in the current
# directory for the string POSIX, and then prints the names of
# those files to the standard output

for file in *
do
	echo $file
done

exit 0

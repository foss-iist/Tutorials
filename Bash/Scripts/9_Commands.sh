#! /bin/sh

# COMMANDS

# BREAK
rm -rf fred*
echo > fred1
echo > fred2
mkdir fred3
echo > fred4

for file in fred*
do
    if [ -d "$file" ]; then
	echo "Skipping directory $file"
	continue;
    fi
    echo file is $file
done

# echo first file starting fred was $file

rm -rf fred*

# The : command can replace true for more efficient usage

rm -f fred
if [ -f fred ]; then
    :
else
    echo file fred did not exist
fi

# The . command executes a program in the current shell

# The echo command prints to the screen

# The eval command to evaluate arguments - This gives you
# the value of the value of a variable
foo=10
x=foo
eval y='$'$x
echo $y

# The exec command to replace current shell with a
# different program. Another use is to modify the
# current file descriptor. eg,
# exec < afile

# The Exit command-1 to 125 are blocked for programs
# 126 is that the file was not executable
# 127 means a command was not found
# 128 and above means a signal occurred

# The export command ensures that a variable defined in a shell
# script is available in any script called from the script
# This can be achieved by "set -a"

# The expr command evaluates its arguments as an expression
# All arithmetic is done in integers
x=`expr 1`
x=$(expr $x + 1)
x=`expr $x + 1`
# use of ` (backtick) and $() is the same
echo $x

# Arithmetic Operations without expr
x=0
x=$(($x+1))
while [ "$x" -ne 10 ]; do
    echo $x
    x=$(($x+1))
done

# The set command sets the parameter variables for the shell
echo the date is $(date)
set $(date)
echo The month is $2

# The shift command moves all the parameter variables down
# by one, so that $2 becomes $1 and so on. $0 is not affected
while [ "$1" != "" ]; do
    echo "$1"
    shift
done

# The unset command removes variables or functions from
# the environment.

# The trap command is used to specify the actions to take
# on receipt of signals
trap 'rm -f /tmp/my_tmp_file_$$' INT
# this command will be executed only when signal INT is passed
echo creating file /tmp/my_tmp_file_$$
dat > /tmp/my_tmp_file_$$

echo "Press interrupt (CTRL-C) to interrupt ... "
while [ -f /tmp/my_tmp_file_$$ ]; do
    echo File Exists
    sleep 1
done
echo The file no longer Exists

trap INT
# To say that no commands need to be executed at SIGINT
echo Creating file /tmp/my_tmp_file_$$
date > /tmp/my_tmp_file_$$

echo "Press interrupt (CTRL-C) to interrupt ... "
while [ -f /tmp/my_tmp_file_$$ ]; do
    echo File Exists
    sleep 1
done

echo We never get here
    

exit 0

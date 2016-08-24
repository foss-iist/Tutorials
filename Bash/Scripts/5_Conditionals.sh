#! /bin/bash

# Tutorial for Conditionals

# Using the test command
if test -f fred.c
then
    echo "FOUND!"
else
    echo "NOT FOUND!"
fi

# Alternatively,
if [ -f fred.c ]
then
    echo "FOUND!"
else
    echo "NOT FOUND!"
fi

# STRING COMPARISONS
S1=Nidish
S2=nidish
S3=Narayanaa
S4=narayanaa

if [ $S1 = $S2 ]
then
    echo "$S1 = $S2"
else
    if [ $S1 != $S2 ]
    then
	echo "$S1 != $S2"
    fi
fi

if [ -n $S1 ]
then
    echo "$S1 is not null."
fi

if [ -z $S5 ]
then
    echo "$S5 is null."
fi

# ARITHMETIC COMPARISONS
if [ 4 -eq 5 ]
then
    echo "4 equals 5"
else
    if [ 4 -lt 5 ]
    then
	echo "4 lesser than 5"
    else
	if [ 4 -gt 5 ]
	then
	    echo "4 greater than 5"
	fi
    fi
fi

# File Conditionals
if [ -d Conditionals ]
then
    echo "File Conditionals is a directory"
elif [ -d . ]
then
    echo "File Conditionals is not a directory"
    echo ". is a directory"
fi

echo ""
if [ -f EnvironmentVars ]
then
    echo "File EnvironmentVars Exists and is a regular file"
    if [ -g EnvironmentVars ]
    then
	echo "set-group-id is set on the file"
    else
	echo "set-group-id is not set on the file"
    fi

    if [ -r EnvironmentVars ]
    then
	echo "The file is readable"
    else
	echo "The file is not readable"
    fi

    if [ -s EnvironmentVars ]
    then
	echo "The file has nonzero size"
    else
	echo "The file does not have nonzero size"
    fi

    if [ -u EnvironmentVars ]
    then
	echo "set-user-id has been set on the file"
    else
	echo "set-user-id has not been set on the file"
    fi

    if [ -w EnvironmentVars ]
    then
	echo "The file is writable"
    else
	echo "The file is not writable"
    fi

    if [ -x EnvironmentVars ]
    then
	echo "The file is executable"
    else
	echo "The file is not executable"
    fi
fi

# EXERCISE
echo ""
echo -n "Is it Morning? Please Answer yes or no: "
read Timeofday

if [ "$Timeofday" = "yes" ]
then
    echo "Good Morning!"
elif [ "$Timeofday" = "no" ]; then
     echo "Good Everning!"
else
    echo "Sorry, $Timeofday not recognized. Enter yes or no."
    exit 1
fi

# Case
echo -n "Is it Morning? Please answer yes or no: "
read Timeofday

# case "$Timeofday" in
#     yes) echo "Good Morning!";;
#     YES) echo "Good Morning!";;
#     Yes) echo "Good Morning!";;
#     no) echo "Good Afternoon!";;
#     NO) echo "Good Afternoon!";;
#     No) echo "Good Afternoon!";;
#     *) echo "Sorry, answer not recognized";;
# esac

# case "$Timeofday" in
#     yes | y | Yes | YES ) echo "Good Morning!";;
#     n* | N* ) echo "Good Afternoon!";;
#     * ) echo "Sorry, Unrecognized!";;
# esac

case "$Timeofday" in
    [yY] | [yY][eE][sS] ) echo "Good Morning!";;
    [nN] | [nN][oO] ) echo "Good Afternoon!";;
    * ) echo "Input not recognized.";;
esac

exit 0

#! /bin/bash

# Woking with Command Line Parameters to the script

echo "Script : $0"
echo "Number of Arguments Passed : $#"

IFS=',' # Field Separator
echo "IFS : $IFS"
echo "The Parameters with \$* : $*"
echo "The Parameters with \$@ : $@"
echo "First Parameters : $1"
echo "Second Parameters : $2"

# Parameter Expansion
my_secret_process() {
    echo $*
}

for i in 1 2
do
    my_secret_process ${i}
done

# Default value substitution
echo ${par:-bar}
echo $par # par is not set
# Alternatively,
echo ${par:=bar}
echo $par

par=new
echo ${par:?bar}
echo ${par:+bar}

# Formatting
foo=/usr/local/X11/startx
echo ${foo}
echo ${foo%/*}
echo ${foo%%/*}
echo ${foo#*/}
echo ${foo##*/}

exit 0

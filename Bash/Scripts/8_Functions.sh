# ~/bin/sh

foo() {
    echo "Function foo is executing!"
    echo "Function Arguments are: $@"
}

echo "Script Starting"
foo a b c d
echo "Script ended"

# Functions with return values
# CAPTURING THE ECHO STRING

func() { echo "I am func";}

res="$(func)"
echo "Func output is : $res"

# RETURNING NUMERIC VALUES

fn() { return $#;}
fn sd d
echo $?

yes_or_no() {
    echo "Is your name $*?"
    while true
    do
	read x
	case "$x" in
	    [yY] | [yY][eE][sS] ) return 0;;
	    [nN] | [nN][oO] ) return 1;;
	    * ) echo "Answer Yes or no"
	esac
    done
}

echo "Original parameters are : $*"

if yes_or_no "$1"
then
    echo "Hi $1! Nice Name!"
else
    echo "Never Mind"
fi

# LOCAL VARIABLES
sample_text="global variable"

foo() {
    local sample_text="local variable"
    echo "Function foo is executing"
    echo $sample_text
}

echo "Script Starting"
echo $sample_text
foo
echo "Script ended"

exit 0

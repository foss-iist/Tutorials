#! /bin/sh

# Loop Constructs

# FOR LOOP - good for looping frough a series of strings;
# Not when you don't know in advance how many times you
# want the loop to be executed.
for foo in bar fud 43
do
    echo $foo
done

# While Construct - while test expression returns true
echo -n "Enter Password: "
read trythis

while [ "$trythis" != "secret" ]; do
    echo "Sorry, Try again"
    read trythis
done

# Until - until test condition becomes true
echo -n "Enter Password Again: "
read trythis
until [ "$trythis" = "secret" ]; do
    echo "Sorry, Try again"
    read trythis
done

exit 0

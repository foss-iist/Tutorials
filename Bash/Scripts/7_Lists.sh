#! /bin/sh

# AND Lists
# Statements separated by && will be executed
# left to right upon successive return of true
# if false is returned in any one statement false
# is returned as the return value of the compound
# statement.

touch file_one
rm -f file_two

if [ -f file_one ] && echo "hello" && [ -f file_two ] && echo " there"
then
    echo "in if"
else
    echo "in else"
fi

# OR Lists
# This executes a set of commands until
# one succeeds, from left to right, separated
# by ||

rm -f file_one

if [ -f file_one ] || echo "Hello" || echo "There"
   # echo always returns true
then
    echo "in if"
else
    echo "in else"
fi

# Nesting them to get (exp)?tr:fl effect
[ -f file_one ] && echo "File Exists" || echo "File Doesn't Exist"
# The above would be interpreted as,
([ -f file_one ] && echo "File Exists") || echo "File Doesn't Exist"
# The result would be different for,
[ -f file_one ] && (echo "File Exist" || echo "File Doesn't Exist")

# STATEMENT BLOCKS - put everything inside { }, ie, a set of
# statements to be part of a list


exit 0

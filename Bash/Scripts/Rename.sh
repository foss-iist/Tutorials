#! /bin/sh

for i in *
do
    mv $i ${i%%.*}.sh
done

exit 0

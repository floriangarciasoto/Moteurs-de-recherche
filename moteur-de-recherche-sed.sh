#!/bin/bash

search=$1
IFS=$'\n'

for line in `ls -l`; do
	replaced=`echo $line | sed "s/$search//g"`
	if [ "$replaced" != "$line" ]; then echo $line; fi
done

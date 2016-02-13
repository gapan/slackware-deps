#!/bin/bash

for i in `ls *.dep`; do
	short=`echo $i | sed "s/\(.*\)-\(.*\)-\(.*\)-\(.*\)\.dep/\1/"`
	echo $short
	mv $i ${short}.dep
done

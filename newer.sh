#!/bin/bash
if test $# -eq 0;then
	echo "No files listed."
else
for i in $(ls -t $*);do
	echo "$i"
	break
done
fi

#!/bin/bash
# save as time-signal-adj.sh
# gives a time signal every hour when connected to cron
# gives which quarter hour
time=$(date +%I)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done
sleep 3
minute=$(date +%M)
if test $minute -le 15; then
	sleep 1
elif test $minute -le 30; then
	echo -e "\a"
	sleep 1
elif test $minute -le 45; then
	echo -e "\a"
	sleep 1
	echo -e "\a"
	sleep 1
else
	echo -e "\a"
	sleep 1
	echo -e "\a"
	sleep 1
	echo -e "\a"
	sleep 1
fi


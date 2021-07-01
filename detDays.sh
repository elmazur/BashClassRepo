#!/usr/bin/env bash
# detDays.sh
maxNum=0
daysOfweek=(Sun Mon Tue Wed Thu Fri Sat)
for day in ${daysOfweek[*]}
do
   dayNum=$(grep $day gitLog.txt | wc -l)
   if [[ $dayNum -gt $maxNum ]]
   then
      maxNum=dayNum
      maxDay=$day
   fi
done
echo "Day with the most entries is $maxDay"

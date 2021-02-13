#! /usr/bin/bash


declare -i H
declare -i M
declare -i cur_H
declare -i cur_M
declare -i min_left
declare -i hour_left
echo -e "What time do you wake up?"
read H
echo -e "and Minutes?"
read M
cur_H=`date +%H`
cur_M=`date +%M`
echo "you selected "
echo "$H:$M"
echo -e "\nIt is currently $cur_H:$cur_M"

if [ $cur_H -lt $H ]; then
    hour_left=`expr $H - $cur_H`
    echo "$H - $cur_H means you have: $hour_left hours still"
fi
if [ $cur_H -gt $H ]; then
    hour_left=`expr $cur_H - $H`
    echo -e "\n$cur_H - $H means you have $hour_left hours left \n"
fi
if [ $cur_H == $H ]; then
    hour_left=0
    echo -e "taking a nap?\n"
fi
if [ $cur_M -lt $M ]; then
    min_left=`expr $M - $cur_M`
    echo -e "$M -$cur_M you have: $min_left minutes still"
fi
if [ $cur_M -gt $M ]; then
    min_left=`expr $cur_M - $M`
    echo -e "$cur_M - $M you have $min_left minutes left\n"
fi
if [ $cur_M == $M ]; then
    min_left=0
    echo -r "and on minutes\n"
fi

echo -e "Sleeping for $hour_left hours and $min_left minutes \n"
sleep $hour_left\n
sleep $min_left\h
sleep $min_left\m
# obviously below needs to path to an alar
vlc --play-and-exit ~/alarm0.webm



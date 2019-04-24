#!/bin/sh

PS=`ps -ef | grep simpleServer | grep -v "grep" | awk '{print $2 , $3}'`
echo "PS of python http-server $PS "

LOC="/var/tmp"
RMDIR=pyhttp

if [ -z "$PS" ]
then
     echo "Python server is already DOWN "
else
     echo "Killing these PS : $PS "
     kill -9 $PS
fi

if [ -d "$LOC" ]
then
     echo "cleaning UP DIR $LOC "
     cd $LOC
     rm -rf $RMDIR
else
     echo "Killing these PS : $PS "
     kill -9 $PS
fi

#!/bin/sh

set -x

LOC=/var/tmp/pyhttp/pyscripts

log="/tmp/serverLog.log.$$"
echo "Checking install " | tee -a $log
echo "PWD is: `pwd` " | tee -a $log
echo "==> Starting Python Server in backgroud ==> " | tee -a $log

cp $LOC/index.html /opt/codedeploy-agent
cp $LOC/banner.png /opt/codedeploy-agent
/usr/bin/python3 $LOC/simpleServer.py >>$log 2>&1 &

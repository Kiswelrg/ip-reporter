#!/bin/sh

pid=`ps -ef|grep "sh /home/kiswelrg/Projects/scripts/checkip.sh"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != ""]
then
    echo "checkip.sh already running, stop it first"
    kill -9 ${pid}
fi

echo "starting ..."

nohup sh /home/kiswelrg/Projects/scripts/checkip.sh > /home/kiswelrg/Projects/scripts/ip.out 2>&1 &

pid=`ps -ef|grep "sh /home/kiswelrg/Projects/scripts/checkip.sh"| grep -v "grep"|awk '{print $2}'`

echo ${pid} > /home/kiswelrg/Projects/scripts/pid2.out
echo "checkip started at pid: "${pid}
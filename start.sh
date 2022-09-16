#!/bin/sh

pid=`ps -ef|grep "sh /home/kiswelrg/Projects/scripts/everysecond.sh"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != ""]
then
    echo "everysecond.sh already running, stop it first"
    kill -9 ${pid}
fi

echo "starting ..."

nohup sh /home/kiswelrg/Projects/scripts/everysecond.sh > /home/kiswelrg/Projects/scripts/lianwang.out 2>&1 &

pid=`ps -ef|grep "sh /home/kiswelrg/Projects/scripts/everysecond.sh"| grep -v "grep"|awk '{print $2}'`

echo ${pid} > /home/kiswelrg/Projects/scripts/pid1.out
echo "everysecond started at pid: "${pid}
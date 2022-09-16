#!/bin/sh

pid=`ps -ef|grep "sh /YourFilePath/everysecond.sh"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != ""]
then
    echo "everysecond.sh already running, stop it first"
    kill -9 ${pid}
fi

echo "starting ..."

nohup sh /YourFilePath/everysecond.sh > /YourFilePath/lianwang.out 2>&1 &

pid=`ps -ef|grep "sh /YourFilePath/everysecond.sh"| grep -v "grep"|awk '{print $2}'`

echo ${pid} > /YourFilePath/pid1.out
echo "everysecond started at pid: "${pid}

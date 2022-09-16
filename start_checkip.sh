#!/bin/sh

pid=`ps -ef|grep "sh /YourFilePath/checkip.sh"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != ""]
then
    echo "checkip.sh already running, stop it first"
    kill -9 ${pid}
fi

echo "starting ..."

nohup sh /YourFilePath/checkip.sh > /YourFilePath/ip.out 2>&1 &

pid=`ps -ef|grep "sh /YourFilePath/checkip.sh"| grep -v "grep"|awk '{print $2}'`

echo ${pid} > /YourFilePath/pid2.out
echo "checkip started at pid: "${pid}

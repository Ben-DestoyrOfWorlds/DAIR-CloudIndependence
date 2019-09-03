#!/bin/bash
x=1
while :
do
  if curl http://127.0.0.1/polls/
  then
    echo Up and running
    break
  else
    echo Still waiting loop $x / 60
    sleep 10
  fi
  if [ $x -gt 59 ]; then
    echo Timeout
    break
  fi
  x=`expr $x + 1`
done

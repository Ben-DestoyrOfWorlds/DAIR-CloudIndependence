#!/bin/bash
x=0
while :
do
  if curl -s http://127.0.0.1/polls/
  then
    echo Up and running
    break
  else
    echo Still waiting
    sleep 10
  fi
  if x > 60
    then
      echo Timeout
      break
  fi
  x=`expr $x + 1`
done

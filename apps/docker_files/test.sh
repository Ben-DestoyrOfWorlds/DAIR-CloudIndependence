#!/bin/bash
while :
do
  if curl http://127.0.0.1/polls/
  then
    echo Up and running
    break
  else
    echo Still waiting
    sleep 10
  fi
done

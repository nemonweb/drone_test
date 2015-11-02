#!/bin/bash
set -e
n=0
until [ $n -ge 60 ]; do
  mysqladmin ping -h"127.0.0.1" --silent && break
  sleep 1
  n=$[$n+1]
done

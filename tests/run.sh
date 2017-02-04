#!/bin/bash

cd `dirname $0`

echo Start the tests

. ./bootstrap.sh $1

for file in `ls | grep test_`
do
  . ./$file
done

echo End of testing

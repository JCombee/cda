#!/bin/bash

cd `dirname $0`

echo Start the tests

for file in `ls | grep test_`
do
  sh ./$file $1
done

echo End of testing

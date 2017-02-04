#!/bin/bash

cd `dirname $0`

mv ~/.cda_list ~/.cda_list_temp

echo Start the tests

for file in `ls | grep test_`
do
  sh ./$file $1
done

mv ~/.cda_list_temp ~/.cda_list

echo End of testing

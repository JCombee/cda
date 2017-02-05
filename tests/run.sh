#!/bin/bash

if [ "$_cdaSourcePath" == "" ]; then
  _cdaSourcePath="${BASH_SOURCE[0]}"
  _cdaSourcePathDir=`dirname "$_cdaSourcePath"`
fi

mv ~/.cda_list ~/.cda_list_temp

_cdaLocation=$1
echo Start the tests

TestFiles=(`find $_cdaSourcePathDir/test_*.sh`)
for file in "${TestFiles[@]}"
do
  sh -c ". $_cdaSourcePathDir/bootstrap.sh $_cdaLocation && . $file"
done

mv ~/.cda_list_temp ~/.cda_list

echo End of testing

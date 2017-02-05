#!/bin/bash

if [ "$_cdaSourcePath" == "" ]; then
  _cdaSourcePath="${BASH_SOURCE[0]}"
  _cdaSourcePathDir=`dirname "$_cdaSourcePath"`
fi

# run the tests before the build will be trigered
sh $_cdaSourcePathDir/tests/run.sh $_cdaSourcePathDir/cda.sh

if test $? == false; then
  echo The test has failed!
  return false
fi

# bootstrapping the application
source $_cdaSourcePathDir/bootstrap.sh

# removing the old build if there is one
rm $_cdaSourcePathDir/build -rf 2>&1

# build the files
mkdir $_cdaSourcePathDir/build
touch $_cdaSourcePathDir/build/cda.sh

for file in "${_cdaFiles[@]}"
do
  cat ${file} >> $_cdaSourcePathDir/build/cda.sh
done

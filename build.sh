#!/bin/bash

# bootstrapping the application

. `pwd`/bootstrap.sh

# removing the old build if there is one
touch `pwd`/cda.sh
rm `pwd`/cda.sh

# build the files
touch `pwd`/cda.sh
for file in "${_cdaFiles[@]}"
do
  cat ${file} >> `pwd`/cda.sh
done

# run the tests before the build will be trigered
sh `pwd`/tests/run.sh `pwd`/cda.sh

if test $? == false; then
  echo The test have failed!
  return false
fi

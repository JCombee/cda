#!/bin/bash

# bootstrapping the application
. $(dirname "$0")/bootstrap.sh

# removing the old build if there is one
touch $(dirname "$0")/cda.sh
rm $(dirname "$0")/cda.sh

# run the tests before the build will be trigered
. $(dirname "$0")/tests/run.sh
if test $? == false; then
  echo The test have failed!
  return false
fi

# build the files
touch $(dirname "$0")/cda.sh
for file in "${_cdaFiles[@]}"
do
  echo "${file}"
  cat "${file}" >> $(dirname "$0")/cda.sh
done

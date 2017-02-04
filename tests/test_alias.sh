#!/bin/bash

. ./bootstrap.sh $1

testSet "Alias"

testDir=`pwd`/test-dir

. $_cdaAliasLocation set test $testDir > /dev/null
. $_cdaAliasLocation test > /dev/null

expectToBeEqual "pwd" "$testDir"

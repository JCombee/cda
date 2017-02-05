#!/bin/bash

testSet "Alias"

testDir="`realpath \`dirname \"${BASH_SOURCE[0]}\"\`/test-dir`"
mkdir $testDir

. $_cdaAliasLocation set test $testDir > /dev/null
. $_cdaAliasLocation test > /dev/null

expectToBeEqual "pwd" "$testDir"

cd `dirname "${testDir}"`

rm $testDir -rf

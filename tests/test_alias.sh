#!/bin/bash

testSet "Alias"

testDir="`dirname \"${BASH_SOURCE[0]}\"`/test-dir"
testDirAbs="`realpath \"${testDir}\"`"
mkdir $testDir

. $_cdaAliasLocation set test $testDir > /dev/null
. $_cdaAliasLocation test > /dev/null

expectToBeEqual "pwd" "${testDirAbs}"

cd `dirname "${testDirAbs}"`

rm $testDirAbs -rf

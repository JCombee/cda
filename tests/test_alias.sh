#!/bin/bash

testSet "Alias"
CurDir="`realpath \`dirname \"${BASH_SOURCE[0]}\"\``"
testDir="$CurDir/test-dir"
testDirAbs="`realpath \"${testDir}\"`"
mkdir $testDir

. $_cdaAliasLocation set test $testDir > /dev/null
. $_cdaAliasLocation test > /dev/null

expectToBeEqual "pwd" "${testDirAbs}"

cd `dirname "${testDirAbs}"`

. $_cdaAliasLocation unset test > /dev/null
. $_cdaAliasLocation test > /dev/null

expectToBeEqual "pwd" "${CurDir}"

cd `dirname "${testDirAbs}"`

rm $testDirAbs -rf

#!/bin/bash

. ./bootstrap.sh $1

testSet "Set"

expectToBeEqual ". $_cdaAliasLocation set foo `pwd`/test-dir" "Alias \"foo\" is set to \"`pwd`/test-dir\""

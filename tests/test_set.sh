#!/bin/bash

testSet "Set"

expectToBeEqual ". $_cdaAliasLocation set foo `pwd`/test-dir" "Alias \"foo\" is set to \"`pwd`/test-dir\""

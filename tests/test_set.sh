#!/bin/bash

testSet "Set"

expectToBeEqual "cda set foo `pwd`/test-dir" "Alias \"foo\" is set to \"`pwd`/test-dir\""

#!/bin/bash

. $FILE_DIR/bootstrap.sh

testSet "List"

expectToBeEqual "cda list" $(cda list) "lisst"

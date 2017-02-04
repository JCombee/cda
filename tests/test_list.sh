#!/bin/bash

. ./bootstrap.sh $1

testSet "List"

expectToBeEqual ". $_cdaAliasLocation list" "list load set shortlist"

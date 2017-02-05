#!/bin/bash

testSet "List"

expectToBeEqual ". $_cdaAliasLocation list" "list load set shortlist"

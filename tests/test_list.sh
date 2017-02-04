#!/bin/bash

testSet "List"

expectToBeEqual ". $_cdaAliasLocation list" "list set shortlist"

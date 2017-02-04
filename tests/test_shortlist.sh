#!/bin/bash

testSet "Shortlist"

expectToBeEqual ". $_cdaAliasLocation shortlist" "list set shortlist"

. $_cdaAliasLocation set foo /bar > /dev/null

expectToBeEqual ". $_cdaAliasLocation shortlist" "list set shortlist foo"

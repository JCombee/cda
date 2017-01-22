#!/bin/bash

FILE_DIR=$(dirname "$0")
alias cda=". ${FILE_DIR}/../src/main.sh"

function testSet() {
  echo -e "\n\nStart test set $1\n"
}

# expectToBeEqual NAME VALUE_1 VALUE_2
function expectToBeEqual() {
  if test "${2}" != "${3}"; then
    echo -e "  X expected \"${1}\" to be \"${3}\" but received \"${2}\"\n"
    return 1
  fi
  echo -e "  √ $1"
  return
}

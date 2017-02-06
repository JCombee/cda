#!/bin/bash

_cdaAliasLocation=`realpath $1`

function testSet() {
  echo -e "\n\nStart test set $1\n"
}

# expectToBeEqual COMMAND EXPECTED
function expectToBeEqual()  {
  _cdaCommand=$1
  _cdaCommandReturns="`$1`"
  _cdaExpected="$2"

  if [ "{$_cdaCommandReturns}" != "{${_cdaExpected}}" ]; then
    echo -e "  X expected \"${_cdaCommand}\" to be \"${_cdaExpected}\" but received \"${_cdaCommandReturns}\"\n"
    return 1
  fi
  echo -e "  √ $1"
  return
}

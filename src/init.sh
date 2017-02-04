#!/bin/bash

_cdaCommands=()
_cdaCommandControllers=()

function _cdaController() {
  _cdaCommands+=($1)
  _cdaCommandControllers+=($2)
}

function _cdaSaveAliases() {
  rm ~/.cda_list 2>&1
  touch ~/.cda_list
  _cdaCounter=0
  for alias in "${_cdaAliases[@]}"
  do
    echo "_cdaAliases[$_cdaCounter]=${_cdaAliases[$_cdaCounter]}" >> ~/.cda_list
    echo "_cdaAliasPaths[$_cdaCounter]=${_cdaAliasPaths[$_cdaCounter]}" >> ~/.cda_list
    _cdaCounter=`expr $_cdaCounter + 1`
  done
}

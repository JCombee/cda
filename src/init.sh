#!/bin/bash

_cdaCommands=()
_cdaCommandControllers=()
_cdaCommandAutocomplete=()

function _cdaController() {
  _cdaCommands+=($1)
  _cdaCommandControllers+=($2)
  _cdaCommandAutocomplete+=($3)
}

function _cdaSaveAliases() {
  rm ~/.cda_list 2>&1
  touch ~/.cda_list
  _cdaNewIndecCounter=0
  _cdaOldIndecCounter=0
  for alias in "${_cdaAliases[@]}"
  do
    if [ "${_cdaAliases[$_cdaOldIndecCounter]}" != "" ]; then
      echo "_cdaAliases[$_cdaNewIndecCounter]=${_cdaAliases[$_cdaOldIndecCounter]}" >> ~/.cda_list
      echo "_cdaAliasPaths[$_cdaNewIndecCounter]=${_cdaAliasPaths[$_cdaOldIndecCounter]}" >> ~/.cda_list
      _cdaNewIndecCounter=`expr $_cdaNewIndecCounter + 1`
    fi
    _cdaOldIndecCounter=`expr $_cdaOldIndecCounter + 1`
  done
}

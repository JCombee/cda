#!/bin/bash

_cdaCommands=()
_cdaCommandControllers=()

function _cdaController() {
  _cdaCommands+=($1)
  _cdaCommandControllers+=($2)
}

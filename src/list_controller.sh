_cdaController list _cdaListController _cdaListAutocomplete

function _cdaListController() {
  echo ${_cdaCommands[@]}
}

function _cdaListAutocomplete() {
  COMPREPLY=("a")
  return 0
}

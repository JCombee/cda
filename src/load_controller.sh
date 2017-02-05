_cdaController load _cdaLoadController _cdaLoadAutocomplete

function _cdaLoadController() {
  _cdaSourcePath=$0
  _cdaAliases=()
  _cdaAliasPaths=()
  . ~/.cda_list 2>&1

  alias cda=". /c/bin/cda/cda.sh"
  complete -o dirnames -F _cdaAutocomplete cda
}

function _cdaLoadAutocomplete() {
  return 0
}

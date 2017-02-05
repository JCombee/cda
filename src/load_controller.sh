_cdaController load _cdaLoadController _cdaLoadAutocomplete

function _cdaLoadController() {
  _cdaAliases=()
  _cdaAliasPaths=()
  touch ~/.cda_list
  . ~/.cda_list

  alias cda=". $_cdaSourcePath"
  complete -o dirnames -F _cdaAutocomplete cda
}

function _cdaLoadAutocomplete() {
  return 0
}

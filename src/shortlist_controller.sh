_cdaController shortlist _cdaShortlistController _cdaShortlistAutocomplete

function _cdaShortlistController() {
  echo ${_cdaCommands[@]} ${_cdaAliases[@]}
}

function _cdaShortlistAutocomplete() {
  return 0
}

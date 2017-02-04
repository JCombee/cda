_cdaController load _cdaLoadController

function _cdaLoadController() {
  _cdaAliases=()
  _cdaAliasPaths=()
  . ~/.cda_list 2>&1
}

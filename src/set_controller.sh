_cdaController set _cdaSetController

_cdaAliases=()

function _cdaSetController() {
  _cdaNewAlias=$2
  _cdaNewPath=$3
  _cdaAliases+=($_cdaNewAlias)
  echo "Alias \"$_cdaNewAlias\" is set to \"$_cdaNewPath\""
}

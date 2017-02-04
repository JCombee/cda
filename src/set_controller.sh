_cdaController set _cdaSetController

function _cdaSetController() {
  _cdaNewAlias=$2
  _cdaNewPath=$3
  _counter=0
  _cont=true

  for _cdaAlias in "${_cdaAliases[@]}"
  do
    if [ $_cdaAlias == $_cdaNewAlias ]; then
      _cdaAliases[$_counter]=$_cdaNewAlias
      _cont=false
    fi
    _counter=`expr $_counter + 1`
  done

  if $_cont; then
    _cdaAliases+=($_cdaNewAlias)
  fi

  echo "Alias \"$_cdaNewAlias\" is set to \"$_cdaNewPath\""
}

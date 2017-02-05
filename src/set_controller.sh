_cdaController set _cdaSetController _cdaSetAutocomplete

function _cdaSetController() {
  _cdaNewAlias=$2
  _cdaNewPath=$3
  _counter=0
  _cont=true

  for _cdaAlias in "${_cdaAliases[@]}"
  do
    if [ $_cdaAlias == $_cdaNewAlias ]; then
      _cdaAliases[$_counter]=$_cdaNewAlias
      _cdaAliasPaths[$_counter]=$_cdaNewPath
      _cont=false
    fi
    _counter=`expr $_counter + 1`
  done

  if $_cont; then
    _cdaAliases+=($_cdaNewAlias)
    _cdaAliasPaths+=($_cdaNewPath)
  fi

  _cdaSaveAliases

  echo "Alias \"$_cdaNewAlias\" is set to \"$_cdaNewPath\""
}

function _cdaSetAutocomplete() {
  return 0
}

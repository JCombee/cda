_cdaController unset _cdaUnsetController _cdaUnsetAutocomplete

function _cdaUnsetController() {
  _cdaUnsetAlias=$2
  _counter=0
  _cont=true

  for _cdaAlias in "${_cdaAliases[@]}"
  do
    if [ $_cdaAlias == $_cdaUnsetAlias ]; then
      _cdaAliases[$_counter]=
    fi
    _counter=`expr $_counter + 1`
  done

  _cdaSaveAliases
  _cdaLoadController

  echo "Alias \"$_cdaNewAlias\" is unset"
}

function _cdaUnsetAutocomplete() {
  if [ $COMP_CWORD != 2 ]; then
    COMPREPLY=()
    return 0
  fi

  _cda_aliases="${_cdaAliases[@]}"

  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${_cda_aliases}" -- ${cur}) )
  return 0
}

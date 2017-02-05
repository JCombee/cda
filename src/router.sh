function _cdaRouterAutocomplete() {
  _cda_commands="${_cdaCommands[@]} ${_cdaAliases[@]}"

  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "${_cda_commands}" -- ${cur}) )

  return 0
}

function _cdaAutocomplete() {
  if [ $COMP_CWORD == 1 ]; then
    _cdaRouterAutocomplete
    return $?
  fi

  _cdaCounter=0
  cur="${COMP_WORDS[1]}"
  for command in "${_cdaCommands[@]}"
  do
    if [ "${command}" == "${cur}" ]; then
      ${_cdaCommandAutocomplete[$_cdaCounter]}
      return $?
    fi
    _cdaCounter=`expr $_cdaCounter + 1`
  done
  return 1
}

_cdaCounter=0
for command in "${_cdaCommands[@]}"
do
  if [ "${command}" == "${1}" ]; then
    "${_cdaCommandControllers[${_cdaCounter}]}" ${@:1}
  fi
  _cdaCounter=`expr $_cdaCounter + 1`
done

_cdaCounter=0
for alias in "${_cdaAliases[@]}"
do
  if [ "${alias}" == "${1}" ]; then
    cd "${_cdaAliasPaths[${_cdaCounter}]}"
  fi
  _cdaCounter=`expr $_cdaCounter + 1`
done

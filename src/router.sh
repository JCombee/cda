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
    echo "${_cdaAliasPaths[${_cdaCounter}]}"
    cd "${_cdaAliasPaths[${_cdaCounter}]}"
  fi
  _cdaCounter=`expr $_cdaCounter + 1`
done

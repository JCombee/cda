_cdaCounter=0
for command in "${_cdaCommands[@]}"
do
  if [ "${command}" == "${1}" ]; then
    "${_cdaCommandControllers[${_cdaCounter}]}" ${@:1}
  fi
  _cdaCounter=`expr $_cdaCounter + 1`
done

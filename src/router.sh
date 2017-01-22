for command in "${_cdaCommands[*]}"
do
  if test "${command}" == "${1}"; then
    "${_cdaCommandController[${command}]}"
  fi
done

_cdaController load _cdaLoadController

function _cdaLoadController() {
  _cdaAliases=()
  _cdaAliasPaths=()
  . ~/.cda_list 2>&1

  alias cda=". /c/bin/cda/cda.sh"
  _cda()
  {
    _cda_commands="${_cdaCommands[@]} ${_cdaAliases[@]}"

    local cur prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "${_cda_commands}" -- ${cur}) )

    return 0
  }
  complete -o nospace -F _cda cda
}

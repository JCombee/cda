_cdaCommands+=("list")
_cdaCommandController["list"]=_cdaListController

function _cdaListController() {
  echo ${_cdaCommands[@]}
}

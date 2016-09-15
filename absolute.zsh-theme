# The prompt
PROMPT=' $(_user_host)$(_current_path)$(git_prompt_info) $(_arrow) '

# The right-hand prompt
RPROMPT='$(_prompt_nvm)$(git_prompt_status) $(_battery_power)$(_return_status)'

local _NODE_ICON='\U2B22'
local _ARROW_ICON='»'
local _ARROW_ICON='→'

function _current_path() {
    echo "%{$fg_bold[green]%}%c%{$reset_color%}"
}

function _arrow() {
    echo "%{$fg_bold[blue]%}$_ARROW_ICON%{$reset_color%}"
}

function _return_status() {
    echo " %{$fg_bold[red]%}%(?..↵)%{$reset_color%}"
}

function _prompt_nvm() {
  local node_version=$(nvm current)
  [[ -z "${node_version}" ]] || [[ ${node_version} = "none" ]] || [[ ${node_version} = "system" ]] && return

  echo "%{$fg_bold[green]%}‹$_NODE_ICON ${node_version:1}›%{$reset_color%}"
}

function _battery_power() {
    local acpi=$(acpi)

    local state=`echo -n $acpi | awk '{print substr($3,0,length($3)-1)}'`
    [[ ! $state == "Discharging" ]] && return

    local bat_percent=`echo -n $acpi | awk '{print substr($4,0,length($4)-2)}'`
    [[ bat_percent -gt 0 ]] && local color=red
    [[ bat_percent -gt 10 ]] && local color=yellow
    [[ bat_percent -gt 30 ]] && local color=green
    echo " %{$fg_bold[$color]%}‹⚡$bat_percent%%›%{$reset_color%}"
}

function _user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[blue]%}$me%{$reset_color%}:"
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_RENAMED=""

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[yellow]%} ◒"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%} ✖"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[blue]%} §"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[cyan]%}⇡ "
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[cyan]%}⇣ "

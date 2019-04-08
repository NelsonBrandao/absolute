# The prompt
PROMPT=' $(_user_host)$(_current_path)$(git_prompt_info) $(_arrow) '

# The right-hand prompt
RPROMPT='$(_prompt_nvm)$(git_prompt_status) $(_battery_power)$(_return_status)'

function _is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

function _current_path() {
    echo "%{$fg_bold[green]%}%c%{$reset_color%}"
}

function _arrow() {
    echo "%{$fg_bold[blue]%}→%{$reset_color%}"
}

function _return_status() {
    echo " %{$fg_bold[red]%}%(?..↵)%{$reset_color%}"
}

function _prompt_nvm() {
  local node_version=$(nvm current)
  [[ -z "${node_version}" ]] || [[ ${node_version} = "none" ]] || [[ ${node_version} = "system" ]] && return

  echo "%{$fg_bold[green]%}‹\U2B22 ${node_version:1}›%{$reset_color%}"
}

function _battery_power() {
  local bat_percent=""

  if _is_osx; then
    local state=`pmset -g batt | grep -Eo "%; \w+;" | cut -d';' -f2 | cut -c2-`
    [[ ! $state == "discharging" ]] && return

    bat_percent=`pmset -g batt | grep -Eo "\d+%" | cut -d% -f1`
  else
    local state=`echo -n acpi | awk '{print substr($3,0,length($3)-1)}'`
    [[ ! $state == "Discharging" ]] && return

    bat_percent=`echo -n acpi | awk '{print substr($4,0,length($4)-2)}'`
  fi

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

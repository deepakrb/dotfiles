# -----------------------------------------------
# History
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt NOTIFY
setopt NOHUP
setopt MAILWARN

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# -----------------------------------------------
# Shortcuts

# Enable reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

if [[ `uname` == 'Darwin' ]]
then
    bindkey -e
    # Option-Right
    bindkey '\e\e[C' forward-word
    # Option-Left
    bindkey '\e\e[D' backward-word

    # Cmd-Left
    bindkey "^[[H" beginning-of-line
    # Cmd-Right
    bindkey "^[[F" end-of-line
else
fi

# -----------------------------------------------
# Prompt
autoload -Uz vcs_info
vcs_info_wrapper() {
  vcs_info
    if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%n%f@%m%f%%$(pwd)$(vcs_info_wrapper):${NEWLINE}$ '

# Ruby
export RBENV_ROOT="$HOME/.rbenv"
if [ -d $RBENV_ROOT ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init - zsh)"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

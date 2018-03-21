export LANG=en_GB.UTF-8

autoload -U compinit 
compinit

for filename in $(find "$HOME/.shell/" -name '_*' -type f); do
	source $filename
done

for filename in $(find "$HOME/.shell/zsh" -name '_*' -type f); do
	source $filename
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export LANG=en_GB.UTF-8

autoload -U compinit 
compinit

for filename in $(find "$HOME/.shell/" -name '_*' -type f); do
	source $filename
done
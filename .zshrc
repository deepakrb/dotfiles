export LANG=en_GB.UTF-8

for filename in $(find "$HOME/.shell/" -name '_*' -type f); do
	source $filename
done

for filename in $(find "$HOME/.shell/zsh" -name '_*' -type f); do
	source $filename
done
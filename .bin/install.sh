# Ask for the administrator password upfront
sudo -v

# Install files
git clone --bare git@github.com:deepakrb/dotfiles.git $HOME/.cfg
function config {
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

# Homebrew
if test ! $(which brew)
then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

apps=(
    rvm
    ffmpeg
    fortune
    git
    git-extras
    grep --with-default-names
    imagemagick --with-webp
    python
    reattach-to-user-namespace
)

brew install "${apps[@]}"

# Homebrew - Node (for Mac)
rm -rf /usr/local/lib/node_modules
brew uninstall node
brew install node --without-npm
echo prefix=~/.npm-packages >> ~/.npmrc
curl -L https://www.npmjs.com/install.sh | sh

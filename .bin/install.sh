# --------------------------------------------
# Ask for the administrator password upfront
# --------------------------------------------
sudo -v

# --------------------------------------------
# Dotfiles
# --------------------------------------------
if [ "$1" == "-t" ]; then
    git clone --bare https://github.com/deepakrb/dotfiles.git $HOME/.cfg
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
fi

# --------------------------------------------
# Homebrew
# --------------------------------------------
if test ! $(which brew)
then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo "Installing Homebrew dependencies"

brew update
brew upgrade --all

apps=(
    ffmpeg
    git
    grep --with-default-names
    imagemagick --with-webp
    python
    tmux
    reattach-to-user-namespace
    fortune
)

brew install "${apps[@]}"

# --------------------------------------------
# NPM
# --------------------------------------------
if test ! $(which npm)
then
    echo "Installing NVM..."
    $(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash)
fi
echo "Installing NPM dependencies"

npm i -g coinmon

# Get rid of last login message
touch ~/.hushlogin

# Disable pop up on key long press
defaults write -g ApplePressAndHoldEnabled -bool false

# Vim config
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

	curl https://raw.githubusercontent.com/coder-wolf/unix-dotfiles/main/.vimrc -o ~/.vimrc


# Faster key repeat
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1

# Install rosetta 2


# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Install apps
# brew install --cask iterm2 easy-move-plus-resize karabiner-elements visual-studio-code google-chrome karabiner-elements bitwarden
brew install notion arc notion-calendar visual-studio-code iterm2 spotify whatsapp google-drive skim shottr hiddenbar google-chrome karabiner-elements rectangle easy-move-plus-resize vlc qbittorrent cloudflare-warp flutter ticktick 


brew install gh z

# Install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# 

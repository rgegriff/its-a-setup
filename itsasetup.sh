mkdir /tmp/itsasetup
cd /tmp/mkdir itsasetup

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tmux
brew tap caskroom/cask
brew cask install subl #enables opening files in sublime from the command line
brew cask install sublime-text-2
brew cask install google-chrome
brew cask install webstorm
brew cask install pycharm
brew cask install flux
brew cask install grandperspective
brew cask install iterm2
brew cask install seil
brew cask install dockertoolbox
brew install coreutils
brew install fswatch
brew cask install slack
brew cask install spotify
brew cask install lastpass
open '/opt/homebrew-cask/Caskroom/lastpass/latest/LastPass Installer.app'

#installing osx-docker-dev tool
curl -o /usr/local/bin/docker-osx-dev "https://raw.githubusercontent.com/brikis98/docker-osx-dev/master/src/docker-osx-dev"
chmod +x "/usr/local/bin/docker-osx-dev"

#installing powerline patched fonts
git clone https://github.com/powerline/fonts
./fonts/install.sh
rm fonts

# Installing Synergy
curl -L -o synergy.dmg "http://synergy-project.org/files/packages/synergy-1.5.0-r2278-MacOSX109-x86_64.dmg"
hdiutil mount -nobrowse synergy.dmg
cp -R "/Volumes/Synergy/Synergy.app" /Applications
hdiutil unmount "/Volumes/Synergy"
rm synergy.dmg

#importing dotfiles
cd ~
git clone https://github.com/tekromancr/dotfiles .dotfiles
find .dotfiles -maxdepth 1 -mindepth 1 | while read file; do ln -s "$file" .; done

#changing shell to zsh
sudo chsh -s $(which zsh)



ln -s ~/repo/configs/.zshrc ~/.zshrc
ln -s ~/repo/configs/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/akulgupta/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install gh

source $MAC_SETUP/.bash_exports
source $MAC_SETUP/.bash_aliases

# Fix iTerm "Enter" being seen as "^M"
stty sane

### BEGIN SETUP VIM ###

mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged

[ ! -f ~/.vim/autoload/plug.vim ] && curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ ! -f ~/.vim/colors/molokai.vim ] && curl -fLo ~/.vim/colors/molokai.vim --create-dirs \
    https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

### END SETUP VIM ###

# Install tmux plugin manager (tpm)
[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

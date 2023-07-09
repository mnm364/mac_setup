source $MAC_SETUP/.bash_exports
source $MAC_SETUP/.bash_aliases

# Fix iTerm "Enter" being seen as "^M"
stty sane


### BEGIN SETUP VIM ###

mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged

[ ! -f ~/.vim/autoload/plug.vim ] && curl -z -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ ! -f ~/.vim/colors/molokai.vim ] && curl -z -fLo ~/.vim/colors/molokai.vim --create-dirs \
    https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

### END SETUP VIM ###

#!bin/sh

DOTPATH="${HOME}/dotfiles"

if [ ! -d "$HOME/.dotbackup" ];then
    command mkdir "$HOME/.dotbackup"
fi

for f in $DOTPATH/.??*
do
    [[ `basename $f` == ".git" ]] && continue
    [[ `basename $f` == ".DS_Store" ]] && continue

    if [[ -L "$HOME/`basename $f`" ]];then
        command rm -f "$HOME/`basename $f`"
    fi
    if [[ -e "$HOME/`basename $f`" ]];then
        command mv "$HOME/`basename $f`" "$HOME/.dotbackup"
    fi

    command ln -snf $f $HOME
done

case ${OSTYPE} in
    darwin*)
        command $DOTPATH/etc/mac.sh
        ;;
    linux*)
        command $DOTPATH/etc/linux.sh
        ;;
esac

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
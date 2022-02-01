# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

#ZSH_THEME="jaischeema"
ZSH_THEME="jbergantine"

setopt nosharehistory
bindkey '^R' history-incremental-search-backward

if [[ $OSTYPE == darwin* ]]; then
else  if [[ $OSTYPE == linux* ]]; then
        if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
            source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
        fi
    fi
fi

export EDITOR=vim
export VISUAL=vim

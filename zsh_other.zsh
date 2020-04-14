# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="philips"

setopt nosharehistory
bindkey '^R' history-incremental-search-backward

if [[ $OSTYPE == darwin* ]]; then
    pythonUserPackagesDir=$(python -m site --user-site)
    if [[ -r $pythonUserPackagesDir/powerline/bindings/zsh/powerline.zsh ]]; then
      source $pythonUserPackagesDir/powerline/bindings/zsh/powerline.zsh
    fi
else  if [[ $OSTYPE == linux ]]; then
        if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
          source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
        fi
      fi
fi

POWERLEVEL9K_COLOR_SCHEME='light'

export EDITOR=vim
export VISUAL=vim
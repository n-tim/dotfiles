alias go="git checkout"
alias st="git st"
alias tmux-start='tmux start-server; tmux attach'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# if [[ $OSTYPE == darwin* ]]; then
#     alias vim='/usr/local/Cellar/vim/8.2.0550/bin/vim'
# fi

if [[ $OSTYPE == linux* ]]; then
    alias pbcopy='xclip -selection c'
    alias pbpaste='xclip -selection clipboard -o'
fi

function runFullTest() {
    ./$1 --gtest_shuffle --gtest_repeat=3 --gtest_color=yes 2>/dev/null
}

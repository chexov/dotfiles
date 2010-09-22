path=(
    ~/bin
    /opt/local/bin
    /opt/local/sbin
    ~/local/bin
    ~/local/sbin
    /Users/chexov/workspace/homebrew/bin
    /sbin
    /usr/sbin
    /bin
    /usr/bin
    /usr/X11R6/bin
    /usr/local/sbin
    /usr/local/bin
    /opt/bin
    /opt/sbin
)

manpath=(
    ~/workspace/homebrew/share/man
    ~/local/share/man
    /usr/man
    /usr/share/man
    /usr/X11R6/man
    /usr/local/man
    /var/qmail/man
)

export path manpath

alias pylint="pylint -f colorized -r n"
[ -f ~/.zshrc.local ] && source ~/.zshrc.local


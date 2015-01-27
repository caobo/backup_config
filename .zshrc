#===================================
#       Personal Settings          |
#===================================

export TERM="xterm-256color"
alias esync='sudo emerge --sync'
alias eupdate='sudo emerge -avuDN --with-bdeps=y world'
alias ew='emacs -nw'
alias sew='sudo emacs -nw'
alias v='vim'
alias sv='sudo vim'
alias sd='sudo shutdown -h 0'
alias rs='sudo shutdown -r 0'
#unalias rm
alias vim="stty stop '' -ixoff ; vim"
# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

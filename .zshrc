#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#===================================
#       Personal Settings          |
#===================================
export NOTES_DIR='/home/bo/Documents/Notes'
export TERM="xterm-256color"
alias esync='sudo emerge --sync'
alias eupdate='sudo emerge -avuDN --with-bdeps=y world'
alias v='nvim'
alias sv='sudo nvim'
alias sd='sudo shutdown -h 0'
alias rs='sudo shutdown -r 0'

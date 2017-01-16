set fish_greeting ''

set -x HOMEBREW_CASK_OPTS '--caskroom=/opt/homebrew-cask/Caskroom'
#set -x PATH "/usr/local/bin" $PATH

set -gx PATH "/usr/local/Cellar/python3" $PATH

function printtime --on-event fish_postexec
    if test $CMD_DURATION
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
        set_color green
        echo $duration
    end
end

alias v nvim


source ~/dotfiles/.bash_aliases

# 1) Safety
    set -o noclobber

# 1.3) Text and editor commands
    export EDITOR='emacs -nw'
    export VISUAL='emacs -nw'

# 1.4) grep options
    export GREP_OPTIONS='--color=auto'
    export GREP_COLOR='1;31' # green for matches


# 1) Safety
    set -o noclobber

# 1.3) Text and editor commands
    export EDITOR='emacs -nw'
    export VISUAL='emacs -nw'

# 1.4) grep options
    export GREP_OPTIONS='--color=auto'
    export GREP_COLOR='1;31' # green for matches

# 1.5) Git prompt if installed
    if [ -f ~/git-prompt/git-prompt.sh ]; then
	. ~/git-prompt/git-prompt.sh	
    fi

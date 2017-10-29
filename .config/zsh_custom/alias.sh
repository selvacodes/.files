#Functions
	# Custom cd
	c() {
		cd $1;
		ls;
	}
	alias cd="c"

bindkey -s jj history-search-backward

# git alias
alias g=git
alias v=vim
alias vi=vim
alias y=yarn

alias ga='git add'
alias gap='git add -p'
alias gph='git push'
alias gpl='git pull'

alias gs='git status'
alias gss='git status -sb'
alias gd='git diff'
alias gds='git diff --staged'

alias gm='git commit -m'
alias gc='git checkout'

alias glg='git lg'
alias gg='git log --oneline --decorate'

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes

alias inst='sudo pacman -S'
export EDITOR="vim"

export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"


# tmux alias
alias tnt="tmux new-session 'tmux source-file ~/.config/tmux_custom/node'"
alias tks="tmux kill-session"

#dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'




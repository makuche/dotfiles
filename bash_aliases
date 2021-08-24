# Add an "alert" alias for long running commands
# Use like sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# file/dir listing
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -hF --color=auto'

# misc
alias jn='jupyter-notebook'
alias py='ipython3'
alias rm='rm -i'
alias grep='grep --color=auto'
alias puhti='ssh kuchelm1@puhti.csc.fi'
alias workstats='cd /home/manuel/Dropbox/Programming/ulogme && python ulogme_serve.py'
alias ulogme='cd /home/manuel/Dropbox/Programming/ulogme && ./ulogme.sh'
alias thesis='cd /home/manuel/Dropbox/Studium/Master/Thesis_Project/thesis/'
alias Dropbox='cd /home/manuel/Dropbox/'
alias open='xdg-open'
alias br='br -sgp'	# shows size, git status and permissions on files

# shopt manages variables that control behavior of the Bash shell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%F %T "

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Display the current Git branch in the Bash prompt.
function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

# Set the prompt.
function bash_prompt(){
    PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
}
bash_prompt

alias weather='curl wttr.in/~Helsinki'
alias weather-rain='curl v2d.wttr.in/Helsinki'

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


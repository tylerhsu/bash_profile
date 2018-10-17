export CLICOLOR=true
export EDITOR=emacs
if [ ! $TERM == "dumb" ]
then
    export PS1="\[\e[34;1m\]\u\[\e[0m\]\[\e[33;1m\]@\[\e[0m\]\[\e[32;1m\]\h\[\e[0m\] \[\e[31;1m\]'\t'\[\e[0m\] \[\e[34;1m\]'\w'\[\e[0m\]\n\[\e[32;1m\]>\[\e[0m\] \$ "
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# use git autocomplete script if available (needed on mac)
# script is available at https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

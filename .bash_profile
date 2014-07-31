umask 0002
export PROXY="proxy.chicago.mintel.ad:3128"
export HTTP_PROXY=http://${PROXY}/
export http_proxy=http://${PROXY}/
export https_proxy=http://${PROXY}/
export FTP_PROXY=http://${PROXY}/
export ftp_proxy=http://${PROXY}/
export CLICOLOR=true
if [ ! $TERM == "dumb" ]
then
    export PS1="\[\e[34;1m\]\u\[\e[0m\]\[\e[33;1m\]@\[\e[0m\]\[\e[32;1m\]\h\[\e[0m\] \[\e[31;1m\]'\t'\[\e[0m\] \[\e[34;1m\]'\w'\[\e[0m\]\n\[\e[32;1m\]>\[\e[0m\] \$ "
fi

alias bootstrap='http_proxy=http://proxy.chicago.mintel.ad:3128 https_proxy=http://proxy.chicago.mintel.ad:3128 ./bootstrap'

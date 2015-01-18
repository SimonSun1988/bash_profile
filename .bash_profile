######## nvm #########
source ~/.nvm/nvm.sh

####### NVM #############                                                   
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

######## npm completion ########
#source ~/local/node/lib/node_modules/npm/lib/utils/completion.sh
#/usr/local/etc/bash_completion.d/npm

# Terminal ls command color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# user information colorful
ZSH_THEME="robbyrussell"
export TERM="xterm-color"
# export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export PS1="\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: \[\e[0;34m\]\w\[\e[0m\] $ "


###### link git #################
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

######  bash auto complete ###############
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

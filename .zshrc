# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git bundle rails zeus)

source $ZSH/oh-my-zsh.sh

# User configuration
####################
# Env (Can be set elsewhere)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PROD_LOGIN=''
export STAGING_LOGIN=''
export PROD_SERVER=''
export STAGING_SERVER=''
export CURRENT_WORKING_DIRECTORY=''
export PROJECT_NAME=''
export BASE_BRANCH='develop'
export EDITOR='emacs-24.4'

# Aliases
## Generic aliases
alias clean='rm -f *~'
alias x='cd $CURRENT_WORKING_DIRECTORY'
alias emacs='emacs-24.4'
alias e='emacs'
alias s='sbl'
alias r='irb'

## Zeus aliases
alias zc='zeus c'
alias zs='zeus s'
alias zt='zeus rspec'
alias zst='zeus start'
alias zr='zeus rake'
alias zm='zeus rake db:migrate'
alias zp='zeus rake db:test:prepare'
alias zmp='zeus rake db:migrate && zeus rake db:test:prepare'

## Ssh aliases
alias sshprod='ssh `echo $PROD_LOGIN`@`echo $PROD_SERVER`'
alias sshstaging='ssh `echo $STAGING_LOGIN`@`echo $STAGING_SERVER'

## Bundle aliases
alias be='bundle exec'
alias b='bundle'
alias br='bundle exec rake'
alias bm='bundle exec rake db:migrate'
alias bp='bundle exec rake db:test:prepare'
alias bmp='bundle exec rake db:migrate && bundle exec rake db:test:prepare'

## Git aliases
alias current_branch="git_prompt_info | cut -d'}' -f2 | cut -d'%' -f1"
alias scm='gco develop db/schema.rb'
alias f='git fetch'
alias fl='git fetch && ggpull'
alias l='ggpull'
alias c='gco'
alias cb='gco -b'
alias a='git add -A'
alias cm='git commit -m'
alias ac='git add -A && git commit -m'
alias h='ggpush'
alias t='git status'
alias hs='h && gco staging && gpl && git merge'
alias hp='h && hub pull-request -b `echo $PROJECT_NAME`:`echo $BASE_BRANCH` -m `current_branch`'
alias p='hub pull-request -b `echo $PROJECT_NAME`:`echo $BASE_BRANCH` -m `current_branch`'

x;
cd .;
__rvm_project_rvmrc;

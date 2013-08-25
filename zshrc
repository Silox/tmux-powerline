# The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

autoload colors
colors

source ~/.zsh/zshrc.sh
setopt prompt_subst
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
PROMPT='[%T]%{$fg[red]%} %n@%m %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_super_status) %(?.✔.✗) '
export PATH="/home/tnaessens/.cabal/bin:.:/usr/local/bin/:/usr/local/sbin/:/home/tnaessens/android-sdks/platform-tools/:$PATH"
export PATH=/home/tnaessens/.gem/bin:$PATH
export PATH=/home/tnaessens/Programs/gradle-1.7/bin:$PATH
export ANDROID_HOME=~/android-sdks/
export EDITOR=vim
export GEM_HOME=$HOME/.gem
export MODULEPATH=$HOME/.local/easybuild/modules/all
source /usr/share/modules/init/zsh

# Mac specific thingies
platform=$(uname -a)
if [[ $platform =~ "Darwin" ]]; then
  eval "$(rbenv init -)"
  eval "$(hub alias -s)"
  alias vim='mvim -v'
  export CLICOLOR=1
else
  alias ls="ls --color=auto"
  eval $(dircolors)
fi

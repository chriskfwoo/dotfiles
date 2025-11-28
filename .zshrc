# inspired by: https://medium.com/airfrance-klm/beautify-your-iterm2-and-prompt-40f148761a49

export ZSH=~/.oh-my-zsh

# disable oh-my-zsh themes for pure prompt
# ZSH_THEME="robbyrussell"
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh
# mac arms
# export ZPLUG_HOME=/opt/homebrew/opt/zplug
# source $ZPLUG_HOME/init.zsh
# mac intels
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# async for zsh, used by pure
zplug "mafredri/zsh-async", from:github

# zsh-users
zplug "zsh-users/zsh-syntax-highlighting", as:plugin, defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin, defer:2
zplug "zsh-users/zsh-completions"

# theme
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme
#zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
#zplug "oddhorse/bubblegum-zsh", use:bubblegum.zsh-theme, as:theme

zplug load

# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

alias ez="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias gl='git log --date=short -15 --pretty="%C(Yellow)%h %x09 %C(reset)%ad %x09 %C(Cyan)%an: %C(reset)%s"'
alias getip="ifconfig | grep \"inet \" | grep -Fv 127.0.0.1 | awk '{print \$2}'"
export PATH=/opt/homebrew/bin:$PATH


# nodejs managers
# eval "$(fnm env --use-on-cd)"
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

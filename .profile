eval "$(/opt/homebrew/bin/brew shellenv)"

# ZSH_THEME="alanpeabody" 

export HISTSIZE=10000
export SAVEHIST=$HISTSIZE

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE

# only execute if on osx
if [[ "$OSTYPE" == "darwin"* ]]; then
   export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
   export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# GO stuff
export GOPATH="$HOME/go"
EXPORT PATH="$PATH:$GOPATH/bin"

# metasploit path 
export PATH="/opt/metasploit-framework/bin:$PATH"

# give it another shot
alias sudoedit="sudo -e"

# neovim is better, right? (and it's a good editor)
export EDITOR=nvim
export VISUAL=nvim

alias vi=nvim
alias vim=nvim
alias neovim=nvim
alias nano=nvim
alias emacs=nvim
alias ed=nvim

# interactive things
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


alias ll='exa -alh --group-directories-first --color=always'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first' 
alias l.='exa -a | egrep "^\."'

eval "$(rbenv init -)"
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


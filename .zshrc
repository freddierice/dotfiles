# Path to your oh-my-zsh installation.
export ZSH=/home/anon/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=~/bin:$PATH
source $ZSH/oh-my-zsh.sh

export LD_LIBRARY_PATH=/usr/local/lib

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# fix weird app thing
export GDK_BACKEND=x11

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
. /etc/profile.d/vte.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# source $HOME/.cargo/env

export PATH=$PATH:/usr/bin/core_perl
export PATH=$PATH:/opt/qemu/bin
export PATH=$PATH:/opt/crosstool-ng/bin/
export PATH=$PATH:/opt/x-tools/arm-unknown-linux-gnueabi/bin/
export PATH=$PATH:/opt/android-studio/bin
export PATH=$PATH:/home/anon/x-tools/armv7a-unknown-linux-gnueabi/bin
export PATH=$PATH:/home/anon/x-tools/armv8-rpi3-linux-gnueabihf/bin
# export PATH=$PATH:/home/anon/ct-ng/x-tools/arm-cortexa9_neon-linux-musleabihf/bin
export PATH=$PATH:/home/anon/ct-ng/x-tools/arm-cortexa9_neon-linux-gnuabihf/bin
export PATH=$PATH:/home/anon/ct-ng/x-tools/arm-cortex_a15-linux-gnueabihf/bin
export PATH=$PATH:/home/anon/ct-ng/x-tools/arm-cortexa9_neon-linux-gnueabihf/bin
export PATH=$PATH:/home/anon/.local/bin

export GOPATH=/home/anon/go
export GOROOT=/opt/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# MYPY
# export MYPYPATH=/usr/lib/python3.6:/usr/lib/python3.6/site-packages

# x-arm
export PATH=$PATH:/opt/x-arm/bin

# cuda
export PATH=$PATH:/opt/cuda/bin:/opt/cuda/nvvm/bin

alias gitc="git commit -S -m "
alias gitp="git push"

alias burp="java -jar -Xmx1024m /opt/burpsuite/burpsuite_free_v1.7.01beta.jar"

alias openplex='ssh -L localhost:32400:10.2.0.2:32400 patagoniafar'
alias openru='ssh -L localhost:9092:10.2.0.2:9092 patagoniafar'
alias opencouch='ssh -L localhost:5050:10.2.0.2:5050 patagoniafar'
alias aosp='cd /home/anon/android && docker run --rm -it -e USER_ID=1000 -e GROUP_ID=1000 -v "/home/anon/android:/aosp" kylemanna/aosp:6.0-marshmallow /bin/bash'
alias twrp='cd /home/anon/twrp && docker run --rm -it -e USER_ID=1000 -e GROUP_ID=1000 -v "/home/anon/twrp:/aosp" kylemanna/aosp:6.0-marshmallow /bin/bash'

alias eth='sudo netctl start wired'
alias wlan='sudo netctl start solarflare'

alias alloy='java -jar /opt/alloy/alloy5.jar'

# spray
alias dbg="arm-linux-gnueabihf-gdb /home/anon/spray/buildroot/output/build/linux-4.9.6/vmlinux -x /home/anon/spray/gdb_cmds"
alias tmux="tmux -2"

# VIM
export VIMRUNTIME=/usr/share/vim/vim81

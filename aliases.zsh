# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------
alias man='LC_ALL=C LANG=C man'

if [ `uname` = "Darwin" ]; then
    # this one goes out to bea, but also...why do I still have to do this sometimes?
    alias fixaudio='sudo killall coreaudiod'
else
    alias ls='ls -FGC --color=auto'
fi

# replace some commands with the better versions of those commands
if command -v exa &> /dev/null; then
    alias ls='exa -G  --color auto --icons -a -s type'
fi
if command -v rg &> /dev/null; then
    alias ack='rg'
fi
if command -v bat &> /dev/null; then
    alias cat='bat'
fi
if command -v procs &> /dev/null; then
    alias ps='procs'
fi
if command -v btm &> /dev/null; then
    # there's a joke here somewhere...
    alias top='btm'
fi
if command -v fd &> /dev/null; then
    alias find='fd'
else
    # find sucks right? I mean, you just want to find a goddamn filename
    alias ffind='find -name'
fi

alias ll='ls -al'
alias l='\ls -pC'

alias c='clear'
alias vim='vim -p'
alias vi='vim'
alias emacs='vimtutor'
alias pico='nano'
alias be='bundle exec'

alias rm='nocorrect rm -v'
alias mv='nocorrect mv -v'
alias cp='nocorrect cp -v'
alias mkdir='nocorrect mkdir -p'

# Basic directory operations
alias ...='cd ../..'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'

# vim stuff
alias clearviews="rm $HOME/.vim/tmp/views/*"
alias clearswaps="rm $HOME/.vim/tmp/swap/*"

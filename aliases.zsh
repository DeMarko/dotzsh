# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------
alias man='LC_ALL=C LANG=C man'

alias ls='ls -AFGC --color=auto'
alias ll='ls -al'
alias l='\ls -pC'

alias c='clear'
alias vim='vim -p'
alias vi='vim'
alias emacs='vimtutor'
alias pico='nano'

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

# find sucks right? I mean, you just want to find a goddamn filename
alias ffind='find -name'

# Etsy stuff
alias apacherestart="sudo /etc/init.d/httpd restart"
alias cddw="cd ~/development/Web"
alias clearviews="rm $HOME/.vim/tmp/views/*"
alias mcflush="sudo /etc/init.d/memcached restart"
eval $(dbaliases)

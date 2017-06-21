# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------
alias man='LC_ALL=C LANG=C man'

if [ `uname` = "Darwin" ]; then
    alias ls='ls -FGC'
    alias back2mymac="echo show Setup:/Network/BackToMyMac | scutil | sed -n 's/.* : *\(.*\).$/\1/p'"
    alias fixaudio='sudo killall coreaudiod'
else
    alias ls='ls -FGC --color=auto'
fi

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

# vim stuff
alias clearviews="rm $HOME/.vim/tmp/views/*"
alias clearswaps="rm $HOME/.vim/tmp/swap/*"

# Etsy stuff
if [[ $HOSTNAME =~ ^.*\.ny([45])?(dev)?\.etsy\.com$ ]]; then
    alias cddw="cd ~/development/Etsyweb"
    alias bounce="sudo service httpd restart"
    alias mcflush="sudo service memcached restart"
    alias wtfranz="sudo service franz restart"
    alias hiphop="~/development/Etsyweb/bin/hphp-data/run-hp.sh"
    alias clearassets='sudo rm -rf /var/etsy/current/htdocs/assets/dist/*'
    alias clearsmarty='sudo rm -rf /var/etsy/current/tmp/templates/compile/*'
    alias tailerror='tailf /var/log/httpd/php.log | ccze -A -p php'
    alias tailhhvm='tailf /var/log/hhvm/hhvm.log | ccze -A -p php'
    eval $($HOME/development/bin/dbaliases)
fi

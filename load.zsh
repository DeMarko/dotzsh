######################################################################
#			DeMarko's .zshrc file v0.404
######################################################################

source $HOME/.zsh/opts.zsh


# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile
zmodload -i zsh/complist

autoload -Uz vcs_info
source $HOME/.zsh/export.zsh
source $HOME/.zsh/aliases.zsh

# # --------------------------------------------------------------------
# # powerline
# # --------------------------------------------------------------------
#POWERLINE_PATH=$HOME/.zsh/zsh-prompt-powerline/
#fpath+=($POWERLINE_PATH)
#autoload promptinit && promptinit || return 1

#zmodload zsh/parameter
#[[ -n $SSH_CONNECTION || $USER == DeMarko ]] && zstyle ':prompt:powerline:ps1' hide-user 1
#zstyle ':vcs_info:*:powerline:*' check-for-changes true
##zstyle ':prompt:powerline:ps1' sep1-char ''
##zstyle ':prompt:powerline:ps1' sep2-char ''
##zstyle ':prompt:powerline:ps1' lock-char ''
##zstyle ':prompt:powerline:ps1' branch-char ''

## disambiguate the pathname instead of last three elements (/u/s/z/functions -> share/zsh/functions)
#source $POWERLINE_PATH/hooks/prompt-disambiguate.zsh
## show signal names instead of exit codes based on a heuristic (130 -> INT)
#source $POWERLINE_PATH/hooks/prompt-exitnames.zsh
## show commits ahead/behind of tracking branch, and number of stashed commits
#source $POWERLINE_PATH/hooks/vcs_info-githooks.zsh

#prompt powerline

# # --------------------------------------------------------------------
# # bindings
# # --------------------------------------------------------------------
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

# # --------------------------------------------------------------------
# # completers
# # --------------------------------------------------------------------

# The following lines were added by compinstall

zstyle '*' single-ignored show
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd directory
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' original false
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:processes' command 'ps -axw'
zstyle ':completion:*' users $USERS
zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
zstyle ':completion:*:processes-names' command 'ps -awxho command'
zstyle ':completion:*:warnings' format 'No matches for: %d'

zstyle ':vcs_info:*' enable git hg svn
# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*:prompt:*' unstagedstr '¹'  # display ¹ if there are unstaged changes
zstyle ':vcs_info:*:prompt:*' stagedstr '²'    # display ² if there are staged changes
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH} ${FMT_ACTION}" "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"              "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             ""

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

compdef mosh=ssh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

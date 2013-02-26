# # --------------------------------------------------------------------
# # environment variables
# # --------------------------------------------------------------------
setopt all_export
PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:/usr/local/opt/ruby/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
if [[ $HOSTNAME =~ ^.*\.ny4(dev)?\.etsy\.com$ ]]; then
    PATH=$PATH:$HOME/development/DevTools/
fi

HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000
HOSTNAME="`hostname`"
PAGER='less'
USERS=(djurado DeMarko dannelj hiroprotagonist) # complete usernames
EDITOR='vim'

autoload colors zsh/terminfo
  if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
  fi
  for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_BRIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
  done
PR_NO_COLOR="%{$terminfo[sgr0]%}"
PR_RESET="%{${reset_color}%}";

setopt prompt_subst
autoload colors
colors
# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stangedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
FMT_BRANCH="${PR_GREEN}%b${PR_RESET} ${PR_RED}%u%c${PR_RESET}" # e.g. master¹²
FMT_ACTION="(${PR_RED}%a${PR_RESET}%)"     # e.g. (rebase-i)
FMT_PATH="${PR_BLUE}%r${PR_WHITE}/${PR_YELLOW}%S${PR_RESET}"              # e.g. ~/repo/subdir

function precmd {
    vcs_info 'prompt'
}

function lprompt {
    local brackets=$1
    local color1=${PR_WHITE}
    local color2=${PR_BLACK}

    local bracket_open="${color1}${brackets[1]}${PR_RESET}"
    local bracket_close="${color1}${brackets[2]}${PR_RESET}"

    local colon="${PR_WHITE}:${PR_RESET}"
    local at="${PR_WHITE}@${PR_RESET}"


    local user="${PR_BRIGHT_MAGENTA}%n${PR_RESET}"
    local host="${PR_BRIGHT_YELLOW}%m${PR_RESET}"
    local cwd="${PR_BRIGHT_GREEN}%2c${PR_RESET}"
    local inner="${user} ${at} ${host} in ${cwd}"
    

    PROMPT="${PR_RESET}${bracket_open}${inner}${bracket_close} %(!.#.$)${PR_RESET} "
}

function rprompt {
    local brackets=$1
    local color1=${PR_WHITE}
    local color2=${PR_BLACK}

    local bracket_open="${brackets[1]}"
    local bracket_close="${brackets[2]}"

    local vcs='$vcs_info_msg_0_'
    local timeanddate="${PR_BRIGHT_CYAN}${bracket_open}%D{%m-%d %H:%M}${bracket_close}${PR_RESET}"
    local vcs_cwd='${${vcs_info_msg_1_%%.}/$HOME/~}'

    RPROMPT="${PR_RESET}${vcs} ${vcs_cwd} ${timeanddate}${PR_RESET}"
}

lprompt ''
rprompt '()'

#PS1="$PR_BRIGHT_MAGENTA%n$PR_NO_COLOR @ $PR_BRIGHT_YELLOW%m$PR_NO_COLOR in $PR_BRIGHT_GREEN%2c$PR_NO_COLOR %(!.#.$) "
#RPS1="$PR_BRIGHT_CYAN(%D{%m-%d %H:%M})$PR_NO_COLOR"
#LANGUAGE=
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE="en_US.UTF-8"
LS_COLORS='no=00:fi=00:di=01;36:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'
DISPLAY=:0

## don't ask me 'do you wish to see all XX possibilities' before menu selection
LISTPROMPT=''

## SPROMPT - the spelling prompt
SPROMPT='zsh: correct '%R' to '%r' ? ([Y]es/[N]o/[E]dit/[A]bort) '

unsetopt all_export


# # --------------------------------------------------------------------
# # HISTORY OPTIONS
# # --------------------------------------------------------------------

# APPEND_HISTORY
# If this is set, zsh sessions will append their history list to
# the history file, rather than overwrite it. Thus, multiple parallel
# zsh sessions will all have their history lists added to the
# history file, in the order they are killed.
setopt append_history

# EXTENDED_HISTORY
# Save each command's beginning timestamp (in seconds since the epoch)
# and the duration (in seconds) to the history file.  The format of
# this prefixed data is:
# ':<beginning time>:<elapsed seconds>:<command>'.
setopt extended_history

# HIST_ALLOW_CLOBBER
# Add '|' to output redirections in the history.  This allows history
# references to clobber files even when CLOBBER is unset.
setopt hist_allow_clobber

# HIST_EXPIRE_DUPS_FIRST
# If the internal history needs to be trimmed to add the current command line,
# setting this option will cause the oldest history event that has a duplicate
# to be lost before losing a unique event from the list.
# You should be sure to set the value of HISTSIZE to a larger number
# than SAVEHIST in order to give you some room for the duplicated
# events, otherwise this option will behave just like HIST_IGNORE_ALL_DUPS
# once the history fills up with unique events.
setopt hist_expire_dups_first

# HIST_FIND_NO_DUPS
# When searching for history entries in the line editor, do not display
# duplicates of a line previously found, even if the duplicates are not
# contiguous.
setopt hist_find_no_dups

# HIST_IGNORE_ALL_DUPS
# If a new command line being added to the history list duplicates an
# older one, the older command is removed from the list (even if it is
# not the previous event).
setopt hist_ignore_all_dups

# HIST_IGNORE_DUPS
# Do not enter command lines into the history list
# if they are duplicates of the previous event.
setopt hist_ignore_dups

# HIST_IGNORE_SPACE
# Remove command lines from the history list when the first character on
# the line is a space, or when one of the expanded aliases contains a
# leading space.
# Note that the command lingers in the internal history until the next
# command is entered before it vanishes, allowing you to briefly reuse
# or edit the line.  If you want to make it vanish right away without
# entering another command, type a space and press return.
setopt hist_ignore_space

# HIST_NO_STORE
# Remove the history (fc -l) command from the history list
# when invoked.
# Note that the command lingers in the internal history until the next
# command is entered before it vanishes, allowing you to briefly reuse
# or edit the line.
setopt hist_no_store

# HIST_REDUCE_BLANKS
# Remove superfluous blanks from each command line
# being added to the history list.
setopt hist_reduce_blanks

# HIST_SAVE_NO_DUPS
# When writing out the history file, older commands that duplicate
# newer ones are omitted.
setopt hist_save_no_dups

# INC_APPEND_HISTORY
# This options works like APPEND_HISTORY except that new history lines
# are added to the $HISTFILE incrementally (as soon as they are
# entered), rather than waiting until the shell is killed.
# The file is periodically trimmed to the number of lines specified by
# $SAVEHIST, but can exceed this value between trimmings.
setopt inc_append_history

# SHARE_HISTORY
# This option both imports new commands from the history file, and also
# causes your typed commands to be appended to the history file (the
# latter is like specifying INC_APPEND_HISTORY).
# The history lines are also output with timestamps ala
# EXTENDED_HISTORY (which makes it easier to find the spot where
# we left off reading the file after it gets re-written).
setopt share_history

# # --------------------------------------------------------------------
# # MISCELLANEOUS OPTIONS
# # --------------------------------------------------------------------

# AUTO_CD
# If a command is issued that can't be executed as a normal command,
# and the command is the name of a directory, perform the cd
# command to that directory.
setopt auto_cd

# AUTO_LIST
# Automatically list choices on an ambiguous completion.
setopt auto_list

# LIST_AMBIGUOUS <D>
# This option works when AUTO_LIST or BASH_AUTO_LIST is also
# set.  If there is an unambiguous prefix to insert on the command line,
# that is done without a completion list being displayed; in other
# words, auto-listing behaviour only takes place when nothing would be
# inserted.  In the case of BASH_AUTO_LIST, this means that the list
# will be delayed to the third call of the function.
setopt list_ambiguous

# LIST_PACKED
# Try to make the completion list smaller (occupying less lines) by
# printing the matches in columns with different widths.
setopt list_packed

# LIST_TYPES
# When listing files that are possible completions, show the
# type of each file with a trailing identifying mark.
setopt list_types

# MARK_DIRS
# Append a trailing `/' to all directory
# names resulting from filename generation (globbing).
setopt mark_dirs

# AUTO_PARAM_SLASH
# If a parameter is completed whose content is the name of a directory,
# then add a trailing slash instead of a space.
setopt auto_param_slash

# AUTO_PUSHD
# Make cd push the old directory onto the directory stack.
setopt auto_pushd

# VERBOSE
# Print shell input lines as they are read.
setopt NO_verbose

# SHORT_LOOPS
# Allow the short forms of for, select,
# if, and function constructs.
setopt short_loops

# CDABLE_VARS
# If the argument to a cd command (or an implied cd with the
# AUTO_CD option set) is not a directory, and does not begin with a
# slash, try to expand the expression as if it were preceded by a
# `~' (see section Filename Expansion).
setopt cdable_vars

# CLOBBER
# Allows `>' redirection to truncate existing files,
# and `>>' to create files.
# Otherwise `>!' or `>|' must be used to truncate a file,
# and `>>!' or `>>|' to create a file.
setopt clobber

# CORRECT
# Try to correct the spelling of commands.
setopt correct

# CORRECT_ALL
# Try to correct the spelling of all arguments in a line.
setopt NO_correct_all

# CHASE_DOTS
# When changing to a directory containing a path segment `..' which would
# otherwise be treated as canceling the previous segment in the path (in
# other words, `foo/..' would be removed from the path, or if `..' is
# the first part of the path, the last part of $PWD would be deleted),
# instead resolve the path to the physical directory.  This option is
# overridden by CHASE_LINKS.
# For example, suppose /foo/bar is a link to the directory /alt/rod.
# Without this option set, `cd /foo/bar/..' changes to /foo; with it
# set, it changes to /alt.  The same applies if the current directory
# is /foo/bar and `cd ..' is used.  Note that all other symbolic
# links in the path will also be resolved.
setopt chase_dots

# CHASE_LINKS (-w)
# Resolve symbolic links to their true values when changing directory.
# This also has the effect of CHASE_DOTS, i.e. a `..' path segment
# will be treated as referring to the physical parent, even if the preceding
# path segment is a symbolic link.
## setopt chase_links

# HASH_CMDS
# Note the location of each command the first time it is executed.
# Subsequent invocations of the same command will use the
# saved location, avoiding a path search.
# If this option is unset, no path hashing is done at all.
# However, when CORRECT is set, commands whose names do not appear in
# the functions or aliases hash tables are hashed in order to avoid
# reporting them as spelling errors.
setopt hash_cmds

# NOTIFY
# Report the status of background jobs immediately, rather than
# waiting until just before printing a prompt.
setopt notify

# MAIL_WARNING
# Print a warning message if a mail file has been
# accessed since the shell last checked.
setopt mail_warning

# RC_QUOTES
# Allow the character sequence '{'}' to signify a single quote
# within singly quoted strings.  Note this does not apply in quoted strings
# using the format $'...', where a backslashed single quote can
# be used.
setopt rc_quotes

# PUSHD_TO_HOME
# Have pushd with no arguments act like `pushd $HOME'.
setopt pushd_to_home

# PUSHD_SILENT
# Do not print the directory stack after pushd or popd.
## setopt pushd_silent

# LONG_LIST_JOBS
# List jobs in the long format by default.
setopt long_list_jobs

# INTERACTIVE_COMMENTS
# Allow comments even in interactive shells.
setopt interactive_comments

# BG_NICE
# Run all background jobs at a lower priority.  This option
# is set by default.
setopt bg_nice

# # --------------------------------------------------------------------
# # COMPLETION/GLOBBING OPTIONS
# # --------------------------------------------------------------------

# COMPLETE_ALIASES
# Prevents aliases on the command line from being internally substituted
# before completion is attempted.  The effect is to make the alias a
# distinct command for completion purposes.
setopt complete_aliases

# GLOB (+F, ksh: +f) <D>
# Perform filename generation (globbing).
# (See section Filename Generation.)
setopt glob

# EXTENDED_GLOB
# Treat the `#', `~' and `^' characters as part of patterns
# for filename generation, etc.  (An initial unquoted `~'
# always produces named directory expansion.)
setopt extended_glob

# GLOB_COMPLETE
# When the current word has a glob pattern, do not insert all the words
# resulting from the expansion but generate matches as for completion and
# cycle through them like MENU_COMPLETE. The matches are generated as if
# a `*' was added to the end of the word, or inserted at the cursor when 
# COMPLETE_IN_WORD is set.  This actually uses pattern matching, not
# globbing, so it works not only for files but for any completion, such as
# options, user names, etc.
setopt glob_complete

# GLOB_DOTS
# Do not require a leading '.' in a filename to be matched explicitly.
setopt glob_dots

# MENU_COMPLETE (-Y)
# On an ambiguous completion, instead of listing possibilities or beeping,
# insert the first match immediately.  Then when completion is requested
# again, remove the first match and insert the second match, etc.
# When there are no more matches, go back to the first one again.
# reverse-menu-complete may be used to loop through the list
# in the other direction. This option overrides AUTO_MENU.
## setopt menu_complete

# AUTO_MENU <D>
# Automatically use menu completion after the second consecutive request for
# completion, for example by pressing the tab key repeatedly. This option
# is overridden by MENU_COMPLETE.
setopt NO_auto_menu

# REC_EXACT
# In completion, recognize exact matches even
# if they are ambiguous.
setopt rec_exact

# NULL_GLOB
# If a pattern for filename generation has no matches,
# delete the pattern from the argument list instead of reporting an error.
# Overrides NOMATCH.
setopt null_glob


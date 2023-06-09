#
# Shell configurations
# See docs:
#  - https://zsh.sourceforge.io/Doc/Release/Options.html
#  - https://zsh.sourceforge.io/Doc/Release/Parameters.html
#

#
# History
#
SAVEHIST=1000000                # The maximum number of history events to save in the history file.
HISTSIZE=1000000                # The maximum number of events stored in the internal history list

setopt EXTENDED_HISTORY         # Add more data (timestamp and elapsed time of the command) to the history
setopt INC_APPEND_HISTORY       # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY            # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS         # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS     # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS        # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS        # Don't write duplicate entries in the history file.
setopt HIST_IGNORE_SPACE        # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS       # Remove superfluous blanks before recording entry.

#
# Files and Directories
#
setopt NO_CASE_GLOB             # Make globbing (filename generation) insensitive to case.
setopt AUTO_CD                  # cd to a dir when the command is a directory path.

#
# Some nice goodies
#
setopt CORRECT                  # Try to correct the spelling of commands.
setopt CORRECT_ALL              # Try to correct the spelling of all arguments in a line.
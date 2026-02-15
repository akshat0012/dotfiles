# ~/.bashrc

# Regular colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Bold colors
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_MAGENTA='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# Reset
RESET='\033[0m'

# If not running interactively, do nothing
[[ $- != *i* ]] && return

# Disable bash history
export HISTFILE=/dev/null
export HISTSIZE=1000

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
PS1="[\u@${BOLD_RED}\h${RESET}\W]\$ "

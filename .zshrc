# Bash autocomplete compatability so bash files can be loaded
autoload bashcompinit
bashcompinit

# Tab completions for libraries like git
# http://stackoverflow.com/questions/26462667/git-completion-not-working-in-zsh-on-os-x-yosemite-with-homebrew
autoload -U compinit && compinit
zmodload -i zsh/complist

source ~/.extra
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh

# Autosuggestions
source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
setopt PROMPT_SUBST
source ~/.git-prompt.sh
autoload -U colors && colors

PROMPT='%{$fg[yellow]%}%1d' # current directory
PROMPT+='%{$fg[blue]%}$(__git_ps1 " %s")' # current git branch
PROMPT+="%{$reset_color%} ▸ "

# Key bindings
bindkey ' ' magic-space  # [Space] - do history expansion

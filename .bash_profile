# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{bash_prompt,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file


# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# keep history up to date, across sessions, in realtime
#  http://unix.stackexchange.com/a/48113
export HISTCONTROL="erasedups:ignoreboth"       # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Add z
if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Save multi-line commands as one command
shopt -s cmdhist

##
## better `cd`'ing
##

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'; # no_NO.UTF-8
export LC_ALL='en_US.UTF-8'; # no_NO.UTF-8

# Colors for `ls`
LSCOLORS=Gxfxcxdxbxegedabagacad


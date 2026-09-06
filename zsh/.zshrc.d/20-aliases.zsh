# 20-aliases.zsh

# cat
if command -v batcat > /dev/null; then
    alias cat='batcat --paging=never'
elif command -v bat > /dev/null; then
    alias cat='bat --paging=never'
fi

# fd
if command -v fdfind > /dev/null; then
    alias fd='fdfind'
fi

# ls
if command -v eza > /dev/null; then
    alias ls='eza --group-directories-first --classify=auto'
    alias ll='ls -hal --git'
    alias tree='eza --group-directories-first --classify=auto -TL 3 --git-ignore -a --ignore-glob=".git"'
elif command -v ls > /dev/null; then
    alias ls='ls --group-directories-first -F'
    alias ll='ls -hal'
fi
alias la='ls -a'

# gh
alias ghil='gh issue list --json number,title,url --jq '\''.[] | "#\(.number) \(.title) \(.url)"'\'''
alias ghpl='gh pr list --json number,title,url --jq '\''.[] | "#\(.number) \(.title) \(.url)"'\'''

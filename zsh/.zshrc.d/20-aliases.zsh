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
    alias ls='eza --icons --group-directories-first'
fi
alias ll='ls -l'
alias la='ls -a'

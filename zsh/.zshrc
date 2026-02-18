if [ -d "$HOME/.zshrc.d" ]; then
    for f in ~/.zshrc.d/*.zsh; do
        printf "Loading: %-30s " "${f:t}..."
        source "$f"
        printf "done\n"
    done
fi

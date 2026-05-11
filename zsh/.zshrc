for dir in "$HOME/.zshrc.d" "$HOME/.zshrc.local.d"; do
    [ -d "$dir" ] || continue
    for f in "$dir"/*.zsh(N); do
        printf "Loading: %-30s " "${f:t}..."
        source "$f"
        printf "done\n"
    done
done

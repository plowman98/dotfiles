if [ -d "$HOME/.zshrc.d" ]; then
    for f in ~/.zshrc.d/*.zsh; do
        source "$f"
    done
fi

# 00-env.zsh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d $PYENV_ROOT/bin ]]; then
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init - zsh)"
fi

# cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

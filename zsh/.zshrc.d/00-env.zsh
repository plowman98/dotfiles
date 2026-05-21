# 00-env.zsh

# local bin
export PATH="$HOME/.local/bin:$PATH"

# cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# uv
[ -f "$HOME/.local/bin/env" ] && source "$HOME/.local/bin/env"

# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell zsh)"
fi

# deno
[ -f "$HOME/.deno/env" ] && source "$HOME/.deno/env"

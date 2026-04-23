# 00-env.zsh

# cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# uv
[ -f "$HOME/.local/bin/env" ] && source "$HOME/.local/bin/env"

# local bin
export PATH="$HOME/.local/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# deno
[ -f "$HOME/.deno/env" ] && source "$HOME/.deno/env"

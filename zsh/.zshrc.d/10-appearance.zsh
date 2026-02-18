# 10-appearance.zsh

# 1. vcs_info
autoload -Uz vcs_info
precmd() { vcs_info }

# 2. git
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}(%b|%a)%f'

# 3. PROMPT
PROMPT='%F{green}%n@%m:%~%f ${vcs_info_msg_0_}
%K{green}%F{black} %D{%H:%M:%S} %f%k %(?.%F{green}.%F{red})$%f '
# PROMPT='%F{green}%n@%m:%~%f ${vcs_info_msg_0_}
# %K{green}%F{black} %D{%H:%M:%S} %f%k $ '

setopt PROMPT_SUBST

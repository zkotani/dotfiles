# Git prompt variables
ZSH_THEME_GIT_PROMPT_PREFIX='%F{3}'
ZSH_THEME_GIT_PROMPT_CLEAN='%F{2}*'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{1}*'
ZSH_THEME_GIT_PROMPT_SUFFIX=''


# Prompt definition
PROMPT='%F{6}%n@%m %{$(git_prompt_info)%} %F{4}%~%f %# '

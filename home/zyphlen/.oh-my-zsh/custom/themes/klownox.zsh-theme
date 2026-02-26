# Git prompt variables
ZSH_THEME_GIT_PROMPT_PREFIX=' %F{7}'
ZSH_THEME_GIT_PROMPT_CLEAN='%F{2}*'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{1}*'
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"

# Prompt definition
PROMPT='%B%F{6}%n%F{3}@%m%{$(git_prompt_info)%} %F{4}%~ %F{7}%#%f%b '

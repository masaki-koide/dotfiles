source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
  zstyle ':completion:*:default' menu select=1
fi
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(fzf --zsh)"
eval "$(starship init zsh)"

autoload -Uz select-word-style
select-word-style bash

function _fzf_cd_ghq() {
    local root="$(ghq root)"
    local repo="$(ghq list | fzf --preview="ls -A --color=always  ${root}/{1}")"
    local dir="${root}/${repo}"
    [ -n "${dir}" ] && cd "${dir}"
    zle accept-line
    zle reset-prompt
}

zle -N _fzf_cd_ghq
bindkey "^g" _fzf_cd_ghq

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

function gp --wraps='gh pr list --limit 100 --state open | fzf | cut -f 1 | xargs gh pr checkout' --description 'alias gp=gh pr list --limit 100 --state open | fzf | cut -f 1 | xargs gh pr checkout'
  gh pr list --limit 100 --state open | fzf | cut -f 1 | xargs gh pr checkout $argv; 
end

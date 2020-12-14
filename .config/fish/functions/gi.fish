# Defined in - @ line 1
function gi --wraps='gh issue list --limit 100 --state open | fzf --preview "echo {} | cut -f 1 | xargs gh issue view" | xargs gh issue view --web' --description 'alias gi=gh issue list --limit 100 --state open | fzf --preview "echo {} | cut -f 1 | xargs gh issue view" | xargs gh issue view --web'
  gh issue list --limit 100 --state open | fzf --preview "echo {} | cut -f 1 | xargs gh issue view" | xargs gh issue view --web $argv;
end

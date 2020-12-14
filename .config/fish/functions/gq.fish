# Defined in - @ line 1
function gq --wraps=cd\ \(ghq\ list\ --full-path\ \|\ fzf\ --preview\ \"echo\ \{\}\ \|\ cut\ -d\ \'/\'\ -f\ 7,8\ \|\ xargs\ gh\ repo\ view\"\) --description alias\ gq=cd\ \(ghq\ list\ --full-path\ \|\ fzf\ --preview\ \"echo\ \{\}\ \|\ cut\ -d\ \'/\'\ -f\ 7,8\ \|\ xargs\ gh\ repo\ view\"\)
  cd (ghq list --full-path | fzf --preview "echo {} | cut -d '/' -f 7,8 | xargs gh repo view") $argv;
end

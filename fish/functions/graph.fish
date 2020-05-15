# Defined in - @ line 1
function graph --wraps='git log --all --decorate --online --graph' --description 'alias graph=git log --all --decorate --online --graph'
  git log --all --decorate --oneline --graph $argv;
end

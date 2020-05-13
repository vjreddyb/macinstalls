export PS1="\h#\u#\W#"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_72.jdk/Contents/Home
export M2_HOME=/usr/local/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
	PATH="/Users/vbethi/Library/Python/3.7/bin:${PATH}"
export PATH

#-------------------------START Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

parse_git_remoterepo(){
 git config --get remote.origin.url 2> /dev/null | sed -e 's/^.*\///' | sed 's/\(.*\)/\(\1\)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_remoterepo)\$(parse_git_branch)\[\033[00m\] $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#-------------------------END git settings------------
#-------------------------Start Custom---------
alias cdrails='cd ~/ruby/DevcampPortfolio'

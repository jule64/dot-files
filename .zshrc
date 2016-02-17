
#load prezto
source ~/.zprezto/runcoms/zshrc


# read doc of a given prezto module
function pzdoc(){

  f="${HOME}/.zprezto/modules/$1/README.md"
  
  if [[ -a "$f" ]]; then
    open "$f"
  else
    echo "'$1/README.md' does not seem to exist in prezto modules"
    ls ~/.zprezto/modules 
  fi

}


#vim cheatsheet
alias vimcheat="open ~/code/docs\ and\ cheat\ sheets/cheat\ sheets/vim-cheatsheet/vim_cheatsheet.md"


# DOCKER ALIASES
alias dkm=docker-machine
alias dk=docker
alias dkui='docker run -d -p 9000:9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock dockerui/dockerui; open /Applications/Google\ Chrome.app http://192.168.99.100:9000'


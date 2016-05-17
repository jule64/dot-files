
#load prezto
source ~/.zprezto/runcoms/zshrc


export EDITOR='vim'
export VISUAL='vim'

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
alias vimcheat='open ~/code/docs\ and\ cheat\ sheets/cheat\ sheets/vim-cheatsheet/vim_cheatsheet.md'


# DOCKER ALIASES
alias dkm=docker-machine
alias dk=docker
alias dkui='docker run -d -p 9000:9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock dockerui/dockerui; open /Applications/Google\ Chrome.app http://192.168.99.100:9000'



# utils

alias ezsh='vi ~/.zshrc'
alias eshortcuts='atom ~/code/productivity-helpers/README.md'

alias mdhelp='open ~/code/docs\ and\ cheat\ sheets/markdown/markdown\ cheat\ sheet.md'


# cd into a project
function op(){

  case "$1" in
      dotfiles)
          cd ~/.dot-files
          ;;
      *)
          ;;
  esac

}




# docs commands
function docs(){

#echo '>> available commands:'
#echo 'docs zsh            ::edit zshrc'
#echo 'docs vi             ::edit vimrc'
#echo 'docs prod           ::edit productivity helpers doc'
#echo 'sourcez             ::source your zshrc'

case "$1" in
    dotf)
        open ~/.dot-files
        ;;
    zsh)
        vi ~/.zshrc
        ;;
    vi)
        vi ~/.vimrc
        ;;
    prod)
        atom ~/code/productivity-helpers/README.md
        ;;
    vimcheat)
        atom ~/code/docs\ and\ cheat\ sheets/cheat\ sheets/vim_cheatsheet.md
        ;;
    notes)
        atom ~/code/notes
        ;;

    *)
        echo '>>>  see available commands:  <<<'
        declare -f docs
        ;;
esac


}


function sourcez(){
  source ~/.zshrc
}

function pysparknotebook(){
  `PYSPARK_DRIVER_PYTHON=ipython PYSPARK_DRIVER_PYTHON_OPTS='notebook' pyspark`
}






###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end


# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end


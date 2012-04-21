
#BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH P#
#---------------------------------------------------------------------------------------------------------------#
#ROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE#
#---------------------------------------------------------------------------------------------------------------#
#------------------------------------------------------------00000---0------------------------------------------#
#-----------------------------000000000-------00------------00000000-000----------------------------------------#
#-----------------------------000000000-------00-----0000--00--------000----------------------------------------#
#--------------------------------000-00----00-00----00-----00--000---000--0-------------------------------------#
#--------------------------------000-00----00-00----0000---00000000--000000000----------------------------------#
#--------------------------------000-00----00-00----0000---000----00-000000000----------------------------------#
#-----------------------------000000-00----00-00----00------00---000-----000------------------------------------#
#------------------------------0000----00000---0000--0000----00000-------000------------------------------------#
#---------------------------------------------------------------------------------------------------------------#
#-------------------------------------------- JULE64@GMAIL.COM -------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------#
#ROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE#
#---------------------------------------------------------------------------------------------------------------#
#/ BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH#





JAVA_HOME="/Library/Java/Home" export JAVA_HOME


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export EDITOR=mvim
export PATH="$PATH:~/Documents/PROGRAMMING/SCRIPTS/"

alias vim=mvim
alias ".."="cd .."
alias "..."="cd .. && cd .."
alias "...."="cd .. && cd .. && cd .."

alias preview="open -a Preview"

alias cdir="pwd"
alias wget=curl
alias ap=apropos
alias calc=bashcalc.sh


#alias sd=. cd-improved.sh
sd () { . cd-improved.sh $1; }

CDPATH='.:~:/.dot-files:~/Documents/PROGRAMMING/SCRIPTS/:~/Documents/ADMIN/:~/Documents/PROGRAMMING/VIMFILES/'



# change command prompt message to '~ >' and add github branch name if in github repo
PS1='\033[0m\] \w\[\033[0m\] $(__git_ps1 "(git:%s)") > '
#PS1='$(__git_ps1 " (%s)") '
#git completion
source ~/.git-completion.bash



#BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH P#
#---------------------------------------------------------------------------------------------------------------#
#ROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE#
#---------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------#####---#---------------------------------------------#
#--------------------------#########-------##------------########-###-------------------------------------------#
#--------------------------#########-------##-----####--##--------###-------------------------------------------#
#-----------------------------###-##----##-##----##-----##--###---###--#----------------------------------------#
#-----------------------------###-##----##-##----####---########--#########-------------------------------------#
#-----------------------------###-##----##-##----####---###----##-#########-------------------------------------#
#--------------------------######-##----##-##----##------##---###-----###---------------------------------------#
#---------------------------####----#####---####--####----#####-------###---------------------------------------#
#---------------------------------------------------------------------------------------------------------------#
#---------------------------------------- JULE64@GMAIL.COM -----------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------#
#LE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / B#
#---------------------------------------------------------------------------------------------------------------#
#ASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PROFILE / BASH PR#



"this is a test

JAVA_HOME="/Library/Java/Home" export JAVA_HOME


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export EDITOR=mvim
export PATH="$PATH:~/Documents/PROGRAMMING/myscripts"

alias vim=mvim
alias ".."="cd .."
alias "..."="cd .. && cd .."
alias "...."="cd .. && cd .. && cd .."

alias preview="open -a Preview"

alias e=echo
alias cdir="pwd"
alias wget=curl
alias ap=apropos

# change command prompt message to '~ >' and add github branch name if in github repo
PS1='\033[0m\] \w\[\033[0m\] $(__git_ps1 "(git:%s)") > '
#PS1='$(__git_ps1 " (%s)") '
#git completion
source ~/.git-completion.bash


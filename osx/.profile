
# Increase max open file limit
ulimit -n 2048


export PATH=$PATH:/usr/loca/bin:/usr/local/sbin
export PATH=$PATH:/Users/jharris285/bin
export PATH=$PATH:/Users/jharris285/bin/apache-maven-3.5.0/bin
export PATH=$PATH:/Users/jharris285/git/arcanist/bin/
export PATH=$PATH:.


#export JAVA_HOME=/usr/bin/java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
# The following is applied AFTER other options set.  command-line options take precedence
export JAVA_TOOL_OPTIONS="-Xms128m -Xmx10g"


# cool colored command prompt:  show red if last command failed
PROMPT_COMMAND='PS1="\[\033[0;33m\][\t] \W\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\` \$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
# boring prompts
# export PS1="_[\D{%D} \t] \W$ "
# export PS1="\h:[\d \t]:\W$ "


export EDITOR='subl -w'
alias e='subl'
alias edit='open -e'



##################################################################################################################
# Aliases - THE BEST PART!
##################################################################################################################

# basic grep, with color, IGNORE binary files
alias jgrep='grep --color=always -r -I -i -n'

# basic grep, with color, INCLUDE binary files
alias jjgrep='grep --color=always -r -i -n'

# grep, limited by max file size
alias sgrep='find . -type f -size -100000c -print0 | xargs -0 grep --color=always -r -i -n'


alias p="pwd"
alias l='ls -latrG'
alias ll='ls -latrhG'
alias lll='ls -ld $(find .)'
alias h='history 100'
alias hg='history | grep'
alias pss='ps -ef | grep'

alias dl='cd ~/Downloads'
alias rmrr='rm -rf *'
alias cho='sudo chown -R jesse:staff'

alias hd='hdfs dfs'
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias grh='git reset HEAD'

alias mgrep='grep --color=always -r -I -i -n --include=metadata.xml'


# i - interactive (ask to overwrite), v - Causes files to be listed when copied, n - Do not overwrite an existing file, p - Preserves attributes, including resource forks,  R - When the source file is a directory and the path ends in with a slash (/) then the entire contents of the directory are copied recursively
# alias c='cp -viR'




##################################################################################################################
# APP-SPECIFIC
##################################################################################################################

# Tiny Proxy :(   This command is your friend (especially if file transfers fail):  $ killall tinyproxy && tinyproxy
export HTTP_PROXY="http://127.0.0.1:8888/"
export http_proxy="http://127.0.0.1:8888/"
export HTTPS_PROXY="http://127.0.0.1:8888/"
export https_proxy="http://127.0.0.1:8888/"
export EXTERNAL_PROXY="http://proxy.someawesomecompany.com:80"
export INTERNAL_PROXY="http://internalproxy.someawesomecompany.com:80"
alias external="HTTP_PROXY=$EXTERNAL_PROXY http_proxy=$EXTERNAL_PROXY HTTPS_PROXY=$EXTERNAL_PROXY https_proxy=$EXTERNAL_PROXY"
alias internal="HTTP_PROXY=$INTERNAL_PROXY http_proxy=$INTERNAL_PROXY HTTPS_PROXY=$INTERNAL_PROXY https_proxy=$INTERNAL_PROXY"

export HADOOP_HEAPSIZE=12288
export HADOOP_HOME="/usr/hdp/current/hadoop"
export TOMCAT_HOME=/Users/jharris285/bin/apache-tomcat-7.0.77
export SVN_EDITOR='vi'
export GIT_EDITOR='vi' 










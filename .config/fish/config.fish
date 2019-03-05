alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
set -x JAVA_HOME $JAVA_8_HOME

set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"

set ANDROID_HOME /Users/holgergp/Library/Android/sdk

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $ANDROID_HOME $HOME/.fastlane/bin $PATH $PATH

## nvm
# set -x NVM_HOME $HOME/.nvm
#nvm use default 

status --is-interactive; and source (rbenv init -|psub)

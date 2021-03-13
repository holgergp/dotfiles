alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
#set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
#set -x JAVA_11_HOME (/usr/libexec/java_home -v 11)

#set -x JAVA_HOME $JAVA_11_HOME

set -x GROOVY_HOME /usr/local/opt/groovy/libexec

set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"

set ANDROID_HOME /Users/holgergp/Library/Android/sdk

set -x N_PREFIX /Users/holgergp/.n

set PATH /usr/local/bin /usr/local/sbin $ANDROID_HOME $ANDROID_HOME/emulator  $ANDROID_HOME/platform-tools $HOME/.fastlane/bin $GROOVY_HOME "$HOME/.cargo/bin" $PATH

set -x MOB_NEXT_STAY true

if status is-interactive
    # These commands need to run when I run fish interactively
    # nvm use default --silent
    source (rbenv init -|psub)
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

source /usr/local/opt/asdf/asdf.fish

starship init fish | source

thefuck --alias | source



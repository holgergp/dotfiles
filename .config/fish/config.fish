alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
set -x JAVA_11_HOME (/usr/libexec/java_home -v 11)

set -x JAVA_HOME $JAVA_11_HOME

set -x GROOVY_HOME /usr/local/opt/groovy/libexec

set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"

set ANDROID_HOME /Users/holgergp/Library/Android/sdk

set -x N_PREFIX /Users/holgergp/.n

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $ANDROID_HOME $ANDROID_HOME/emulator  $ANDROID_HOME/platform-tools $HOME/.fastlane/bin $GROOVY_HOME "$HOME/.cargo/bin" $PATH

set -x MOB_NEXT_STAY true


if status is-interactive
    # These commands need to run when I run fish interactively
    nvm use default --silent
    source (rbenv init -|psub)
end

#status --is-interactive; and nvm use default --silent
#status --is-interactive; and source (rbenv init -|psub)

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

starship init fish | source

thefuck --alias | source

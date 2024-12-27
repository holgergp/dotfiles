alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
#set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
#set -x JAVA_11_HOME (/usr/libexec/java_home -v 11)

#set -x JAVA_HOME $JAVA_11_HOME

set -x USER_HOME /Users/holgergp

set -x GROOVY_HOME /usr/local/opt/groovy/libexec
set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"
set -x N_PREFIX /Users/holgergp/.n

set PATH /usr/local/bin /usr/local/sbin $GROOVY_HOME "$HOME/.cargo/bin"  $PATH

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
set PYTHON_3_HOME /Users/holgergp/Library/Python/3.8/
source /opt/homebrew/opt/asdf/libexec/asdf.fish

starship init fish | source

thefuck --alias | source


fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path /opt/homebrew/opt/openjdk@11/bin
fish_add_path $PYTHON_3_HOME/bin
fish_add_path $USER_HOME/bin

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/holgergp/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/holgergp/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

[ -n "$PS1" ] && source ~/.bashrc
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/holgergp/.sdkman"
[[ -s "/Users/holgergp/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/holgergp/.sdkman/bin/sdkman-init.sh"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/holgergp/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
. "$HOME/.cargo/env"

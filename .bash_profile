[ -n "$PS1" ] && source ~/.bashrc
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/holgergp/.sdkman"
[[ -s "/Users/holgergp/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/holgergp/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.cargo/bin:$PATH"

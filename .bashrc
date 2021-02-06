# Load the shell dotfiles:
for file in ~/.dotfiles/.{exports,aliases,functions,bash_prompt,init}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
#source /usr/local/etc/bash_completion.d/git-completion.bash


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

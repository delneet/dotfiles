autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.yarn/bin
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/Applications/RubyMine.app/Contents/MacOS:$PATH"
export EDITOR="rubymine"
export BUNDLER_EDITOR=$EDITOR
export MANPAGER="less -X" # Don’t clear the screen after quitting a manual page
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export SOURCE_ANNOTATION_DIRECTORIES="spec"
export DISABLE_AUTO_TITLE=true
export _Z_OWNER=$USER
export ZSH_DISABLE_COMPFIX=true
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export DOTFILES="$HOME/dotfiles"
export IRBC="$HOME/.irbrc"
HOST_NAME=$(scutil --get HostName)
export HOST_NAME

# export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
# export RUBY_CONFIGURE_OPTS="--with-opt-dir=/usr/local/opt/openssl:/usr/local/opt/readline:/usr/local/opt/libyaml:/usr/local/opt/gdbm"
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl@1.1` --with-readline-dir=`brew --prefix readline`"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl@3` --with-readline-dir=`brew --prefix readline`"

# export LDFLAGS="-L/opt/homebrew/opt/readline/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig:$PKG_CONFIG_PATH"

# export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"

# export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:$PKG_CONFIG_PATH"

# export LDFLAGS="-L/opt/homebrew/opt/libffi/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/libffi/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"

# export LDFLAGS="-L/opt/homebrew/opt/libpq/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/libpq/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig:$PKG_CONFIG_PATH"

# . $DOTFILES/zsh/oh-my-zsh
. $DOTFILES/zsh/opts
. $DOTFILES/zsh/aliases
. $DOTFILES/zsh/named-dirs
. $DOTFILES/zsh/prompt
. $DOTFILES/zsh/functions
. $DOTFILES/zsh/z.sh
. $DOTFILES/zsh/ranger.sh

# cdpath=($HOME/code $DOTFILES $HOME/Developer $HOME/Sites $HOME/Dropbox $HOME)

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history
HIST_STAMPS="yyyy-mm-dd"

# Use vi mode
bindkey -v

# Vi mode settings
# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Easier, more vim-like editor opening
bindkey -M vicmd v edit-command-line

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# Include local settings
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

# asdf
# . $HOME/.asdf/completions/asdf.bash
. $(brew --prefix asdf)/libexec/asdf.sh

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
source <(fzf --zsh)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
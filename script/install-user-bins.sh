#!/bin/bash

# Install diff-highlight on Ubuntu/Debian
# Copy it so that we can add +x perms
if [[ -f /usr/share/doc/git/contrib/diff-highlight/diff-highlight ]]
  then
    cp -uv /usr/share/doc/git/contrib/diff-highlight/diff-highlight "$HOME/bin"
    chmod u+x "$HOME/bin/diff-highlight"
fi

# Install diff-highlight on OS X
if [[ -f /usr/local/var/homebrew/linked/git/share/git-core/contrib/diff-highlight/diff-highlight ]]
  then
    ln -sfv /usr/local/var/homebrew/linked/git/share/git-core/contrib/diff-highlight/diff-highlight "$HOME/bin/diff-highlight"
fi

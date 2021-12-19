#!/bin/bash

echo "==> Installing user bins..."

echo "--> Installing diff-highlight..."
# Install diff-highlight on Ubuntu/Debian
# Copy it so that we can add +x perms
if [[ -f /usr/share/doc/git/contrib/diff-highlight/diff-highlight ]]
  then
    cp -uv /usr/share/doc/git/contrib/diff-highlight/diff-highlight "$HOME/bin"
    chmod u+x "$HOME/bin/diff-highlight"
fi

# Install diff-highlight on OS X
if [[ -d /opt/homebrew ]]; then
  bin_path="$(find /opt/homebrew -name diff-highlight -type f | head -n 1)"
  ln -sfnv "$bin_path" "$HOME/bin/diff-highlight"
fi

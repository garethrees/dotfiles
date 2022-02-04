#!/bin/bash

echo "==> Installing script wrappers..."

for source in "$DOTFILES_DIR/src/script/"*; do
  script_name="$(basename "$source")"
  echo "--> Installing $script_name"

  bin_target="$HOME/bin/$script_name"
  script_target="$HOME/.script/$script_name"
  c_src="/tmp/$script_name.c"

  cat << EOF > $c_src
#include <stdlib.h>

int main(void) {
  int status = system("$script_target");
  int ret = WEXITSTATUS(status);
  return ret;
}
EOF

  gcc -Wall -o $bin_target $c_src
done

echo "==> Remember to manually set file access permissions!"

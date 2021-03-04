function bundle! {
  for file in $(find . gemfiles/ -name "*.lock" -maxdepth 1 -exec echo {} \; 2> /dev/null); do
    git checkout HEAD -- $file 2> /dev/null
    base=${file%.lock}

    if test -f "$base" && grep -q -E 'rubygems|gemfile' $base; then
      echo $base
      BUNDLE_GEMFILE=$base bundle $@

      if grep -q 'RUBY VERSION' $file; then
        perl -0777 -pi -e 's/\nRUBY VERSION\n.*\n//' $file > /dev/null
      fi

      if grep -q 'BUNDLED WITH' $file; then
        perl -0777 -pi -e 's/\nBUNDLED WITH\n.*\n//' $file > /dev/null
      fi
    fi
  done
}

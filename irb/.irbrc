require 'pp'
ARGV.concat [ '--prompt-mode', 'simple' ]
IRB.conf[:PROMPT_MODE] = :SIMPLE

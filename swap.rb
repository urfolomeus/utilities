#!/usr/bin/ruby
host = case ARGV.first
when "-h"
  ARGV.shift
  ARGV.shift
else
  puts "Usage: swap -h [hostname]"
  exit 0
end
exec "blueutil off; ssh #{host} \"blueutil on\""
exit 0
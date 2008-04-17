require 'rubygems'
require 'optiflag'

module Test extend OptiFlagSet
  flag 'u' do
    description "Username on the address server"
    long_form "username"
  end

  flag 'a' do
    description "Address to log into"
    long_form "address"
  end

  optional_flag 'proxy' do
    description "Proxy address to use when logging in"
  end

  usage_flag "h","help","?"
  extended_help_flag "superhelp"
  and_process!
end

puts "#{ARGV.flags.u} #{ARGV.flags.a}"

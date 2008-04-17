require 'rubygems'
require 'optiflag'

module Test extend OptiFlagSet
  keyword 'list' do
    description "List all the notes"
  end

  keyword 'show' do
    description "Show a note"
  end

  keyword 'edit' do
    description "Edit a given stikkit"
  end

  usage_flag "h","help","?"
  extended_help_flag "superhelp"
  and_process!
end

if ARGV.flags.list
  puts "Would list all notes"
elsif ARGV.flags.show 
  puts "Would show one note"
elsif ARGV.flags.edit
  puts "Would edit one note"
end


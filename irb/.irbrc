# frozen_string_literal: true
# vim: set filetype=ruby:

require "amazing_print"
AmazingPrint.irb!

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:USE_MULTILINE]    = true
IRB.conf[:USE_COLORIZE]     = true
IRB.conf[:USE_AUTOCOMPLETE] = true
IRB.conf[:AUTO_INDENT]      = true
IRB.conf[:HISTORY_FILE]     = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:SAVE_HISTORY]     = 1000

puts "irbrc loaded"

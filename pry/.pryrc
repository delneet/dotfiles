# frozen_string_literal: true

if defined?(PryDebugger) || defined?(PryByebug)
  # Aliases
  Pry.commands.alias_command "..", "cd .."
  Pry.commands.alias_command "c", "clear-screen"
  Pry.commands.alias_command "cc", "continue"
  Pry.commands.alias_command "ff", "finish"
  Pry.commands.alias_command "h", "help"
  Pry.commands.alias_command "l", "ls"
  Pry.commands.alias_command "nn", "next"
  Pry.commands.alias_command "ss", "step"

  # Prompt (For more options, see change-prompt --list)
  Pry.config.prompt = Pry::Prompt[:nav]
end

  require "amazing_print"
  AmazingPrint.pry!

# vim: set filetype=ruby:

puts "pryrc loaded"

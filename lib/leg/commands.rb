module Leg::Commands
  LIST = []
end

require 'leg/commands/base_command'

require 'leg/commands/build'
require 'leg/commands/status'
require 'leg/commands/commit'
require 'leg/commands/amend'
require 'leg/commands/resolve'
require 'leg/commands/step'
require 'leg/commands/help'
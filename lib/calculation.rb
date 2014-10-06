module Calculation
end

require_relative 'calculation/console_io'
require_relative 'calculation/command_parser'
require_relative 'calculation/calculator'


#Calculation::ConsoleIO.new(Calculation::CommandParser.new(Calculation::Calculator.new)).start
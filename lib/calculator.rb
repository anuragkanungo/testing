module Calculator
end

require_relative 'calculator/command_parser'
require_relative 'calculator/operations'

calc = Calculator::CommandParser.new
calc.read
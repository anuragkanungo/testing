#basic math operations
class Calculator::Operations

  attr_reader :accumulator

  def initialize
    @accumulator = 0.0
  end

  def add(value)
    @accumulator += value
  end

  def multiply(value)
    @accumulator *= value
  end

end
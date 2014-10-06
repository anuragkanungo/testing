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

  def subtract(value)
    @accumulator -= value
  end

  def cancel
    @accumulator = 0.0
  end

  def divide(value)
    @accumulator /= value
  end

end
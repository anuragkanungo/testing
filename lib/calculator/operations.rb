#basic math operations
class Calculator::Operations

  def initialize
    @accumulator = 0.0
  end

  def add(value)
    @accumulator +=value
  end

end
#basic arithmetic operations
class Calculation::Calculator

  attr_reader :accumulator

  def initialize(accumulator = 0.0)
    @accumulator = accumulator
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
    @accumulator = 0
  end

  def divide(value)
    @accumulator /= value
  end

  def square
    @accumulator**=2
  end

  def sqr
    if @accumulator >= 0
      @accumulator = Math.sqrt(@accumulator) if @accumulator >= 0
    else
      "Invalid Command"
    end
  end

  def cube
    @accumulator**=3
  end

  def cubert
    @accumulator = Math.cbrt(@accumulator).round(8)
  end

  def abs
    @accumulator = @accumulator.abs
  end

  def neg
    @accumulator *=-1
  end

end
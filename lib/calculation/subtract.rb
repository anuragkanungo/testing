#command subtract
class Calculation::Subtract

  def initialize(calculator,number)
    @calculator = calculator
    @number = number
  end

  def execute
    @calculator.subtract(@number)
  end

end
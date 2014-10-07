#command multiply
class Calculation::Multiply

  def initialize(calculator,number)
    @calculator = calculator
    @number = number
  end

  def execute
    @calculator.multiply(@number)
  end

end
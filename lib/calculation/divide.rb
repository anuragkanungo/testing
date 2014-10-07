#command divide
class Calculation::Divide

  def initialize(calculator,number)
    @calculator = calculator
    @number = number
  end

  def execute
    @calculator.divide(@number)
  end

end
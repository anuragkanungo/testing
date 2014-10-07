#command add
class Calculation::Add

  def initialize(calculator,number)
    @calculator = calculator
    @number = number
  end

  def execute
    @calculator.add(@number)
  end

end
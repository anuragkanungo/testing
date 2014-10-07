#command negate
class Calculation::Neg

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.neg
  end

end
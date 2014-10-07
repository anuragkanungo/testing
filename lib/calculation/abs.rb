#command abs
class Calculation::Abs

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.abs
  end

end
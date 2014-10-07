#command square
class Calculation::Square

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.square
  end

end
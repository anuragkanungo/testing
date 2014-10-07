#command square root
class Calculation::Sqr

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.sqr
  end

end
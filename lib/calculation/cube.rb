#command cube
class Calculation::Cube

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.cube
  end

end
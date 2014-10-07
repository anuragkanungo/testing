#command reset
class Calculation::Cancel

  def initialize(calculator)
    @calculator = calculator
  end

  def execute
    @calculator.cancel
  end

end
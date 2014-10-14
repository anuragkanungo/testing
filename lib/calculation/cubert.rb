#command cube root
class Calculation::Cubert

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.cubert
  end

  def execute_repeat
    @calculator.cubert
  end

end
#command cube
class Calculation::Cube

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.cube
  end

  def execute_repeat
    @calculator.cube
  end

end
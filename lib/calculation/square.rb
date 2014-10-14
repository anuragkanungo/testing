#command square
class Calculation::Square

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.square
  end

  def execute_repeat
    @calculator.square
  end

end
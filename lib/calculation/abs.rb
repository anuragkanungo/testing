#command abs
class Calculation::Abs

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    self.execute_repeat
  end

  def execute_repeat
    @calculator.abs
  end


end
#command negate
class Calculation::Neg

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.neg
  end

  def execute_repeat
    @calculator.neg
  end

end
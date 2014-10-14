#command square root
class Calculation::Sqr

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.sqr
  end

  def execute_repeat
    @calculator.sqr
  end


end
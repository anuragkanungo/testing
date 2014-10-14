#command multiply
class Calculation::Multiply

  def initialize(calculator,number,history)
    @calculator = calculator
    @number = number
    @history =history
  end

  def execute
    @history.insert(self)
    @calculator.multiply(@number)
  end

  def execute_repeat
    @calculator.multiply(@number)
  end

end
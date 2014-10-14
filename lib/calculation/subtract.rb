#command subtract
class Calculation::Subtract

  def initialize(calculator,number,history)
    @calculator = calculator
    @number = number
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.subtract(@number)
  end

  def execute_repeat
    @calculator.subtract(@number)
  end


end
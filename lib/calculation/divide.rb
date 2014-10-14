#command divide
class Calculation::Divide

  def initialize(calculator,number,history)
    @calculator = calculator
    @number = number
    @history = history
  end

  def execute
    @history.insert(self)
    @calculator.divide(@number)
  end

  def execute_repeat
    @calculator.divide(@number)
  end

end
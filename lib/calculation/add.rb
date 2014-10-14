#command add
class Calculation::Add

  def initialize(calculator,number,history)
    @calculator = calculator
    @number = number
    @history = history
  end

  def execute
    @history.insert(self)
    self.execute_repeat
  end

  def execute_repeat
    @calculator.add(@number)
  end

end
#repeat command
class Calculation::Repeat

  def initialize(calculator,number,history)
    @history = history
    @calculator = calculator
    @number = number
  end

  def execute
    @history.last(@number).map do |command|
        command.execute_repeat
      end.last
  end

end
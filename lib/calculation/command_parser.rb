#command controller
class Calculation::CommandParser

  ADD = "add"
  SUBTRACT = "subtract"
  MULTIPLY = "multiply"
  DIVIDE = "divide"
  CANCEL = "cancel"
  EXIT = "exit"
  SQUARE = "square"
  SQUARE_ROOT = "sqr"
  CUBE = "cube"
  CUBE_ROOT = "cubert"
  ABSOLUTE = "abs"
  NEGATE = "neg"
  REPEAT = "repeat"

  def initialize(calculator)
    @calculator = calculator
    @history = []
  end

  def parse(input)
    args = input.split
    @history << args if args[0] != REPEAT
    self.execute(args)
  end

  def execute(args)
    if args[0] == ADD
      @calculator.add(args[1].to_f)
    elsif args[0] == SUBTRACT
      @calculator.subtract(args[1].to_f)
    elsif args[0] == MULTIPLY
      @calculator.multiply(args[1].to_f)
    elsif args[0] == DIVIDE
      @calculator.divide(args[1].to_f)
    elsif args[0] == CANCEL
      @calculator.cancel
    elsif args[0] == SQUARE
      @calculator.square
    elsif args[0] == SQUARE_ROOT
      @calculator.sqr
    elsif args[0] == CUBE
      @calculator.cube
    elsif args[0] == CUBE_ROOT
      @calculator.cubert
    elsif args[0] == ABSOLUTE
      @calculator.abs
    elsif args[0] == NEGATE
      @calculator.neg
    elsif args[0] == EXIT
      exit
    elsif args[0] == REPEAT
      if @history.length >= args[1].to_i
        history = @history[(-args[1].to_i)..-1]
        history.inject(0) { |result,x| self.execute(x)}
      end
    else
      "Invalid Command"
    end

  end


end
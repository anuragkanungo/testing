#command controller
class Calculation::Parser

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def parse(input)
    args = input.split
    case args[0]
      when "add" then command = Calculation::Add.new(@calculator,args[1].to_f)
      when "subtract" then command = Calculation::Subtract.new(@calculator,args[1].to_f)
      when "multiply" then command = Calculation::Multiply.new(@calculator,args[1].to_f)
      when "divide" then command = Calculation::Divide.new(@calculator,args[1].to_f)
      when "cancel" then command = Calculation::Cancel.new(@calculator)
      when "abs" then command = Calculation::Abs.new(@calculator)
      when "neg" then command = Calculation::Neg.new(@calculator)
      when "sqr" then command = Calculation::Sqr.new(@calculator)
      when "square" then command = Calculation::Square.new(@calculator)
      when "cube" then command = Calculation::Cube.new(@calculator)
      when "cubert" then command = Calculation::Cubert.new(@calculator)
      when "repeat" then return @history.execute(args[1].to_i)
      when "exit" then exit
      else return "Invalid Command"
    end

    @history.insert(command)
    command.execute
  end

end
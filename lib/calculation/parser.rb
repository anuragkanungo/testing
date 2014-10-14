#command controller
class Calculation::Parser

  def initialize(calculator,history)
    @calculator = calculator
    @history = history
  end

  def parse(input)
    args = input.split
    case args[0]
      when "add" then Calculation::Add.new(@calculator,args[1].to_f,@history).execute
      when "subtract" then Calculation::Subtract.new(@calculator,args[1].to_f,@history).execute
      when "multiply" then Calculation::Multiply.new(@calculator,args[1].to_f,@history).execute
      when "divide" then Calculation::Divide.new(@calculator,args[1].to_f,@history).execute
      when "cancel" then Calculation::Cancel.new(@calculator).execute
      when "abs" then Calculation::Abs.new(@calculator,@history).execute
      when "neg" then Calculation::Neg.new(@calculator,@history).execute
      when "sqr" then Calculation::Sqr.new(@calculator,@history).execute
      when "square" then Calculation::Square.new(@calculator,@history).execute
      when "cube" then Calculation::Cube.new(@calculator,@history).execute
      when "cubert" then Calculation::Cubert.new(@calculator,@history).execute
      when "repeat" then Calculation::Repeat.new(@calculator,args[1].to_i,@history).execute
      when "exit" then exit
      else Calculation::InvalidCommand.new.execute
    end
  end

end
#command controller
class Calculation::Parser

  def initialize(calculator)
    @calculator = calculator
    @history = []
  end

  def parse(input)
    args = input.split
    @history << input if args[0] != "repeat"

    case args[0]
      when "add" then Calculation::Add.new(@calculator,args[1].to_f).execute
      when "subtract" then Calculation::Subtract.new(@calculator,args[1].to_f).execute
      when "multiply" then Calculation::Multiply.new(@calculator,args[1].to_f).execute
      when "divide" then Calculation::Divide.new(@calculator,args[1].to_f).execute
      when "cancel" then Calculation::Cancel.new(@calculator).execute
      when "exit" then exit
      when "abs" then Calculation::Abs.new(@calculator).execute
      when "neg" then Calculation::Neg.new(@calculator).execute
      when "sqr" then Calculation::Sqr.new(@calculator).execute
      when "square" then Calculation::Square.new(@calculator).execute
      when "cube" then Calculation::Cube.new(@calculator).execute
      when "cubert" then Calculation::Cubert.new(@calculator).execute
      when "repeat"
        if @history.length >= args[1].to_i
          history = @history[(-args[1].to_i)..-1]
          history.inject(0) { |result,x| self.parse(x)}
        end
    end
  end

end
class Calculator::CommandParser

  def initialize
    @calculator = Calculator::Operations.new
  end

  def parse(inp)
    args = inp.split
    self.operate(args)
  end

  def read
    loop do
      puts parse(STDIN.gets)
    end
  end

  def operate(args)
    if args[0] == "add"
      @calculator.add(args[1].to_i)
    elsif args[0] == "subtract"
      @calculator.subtract(args[1].to_i)
    elsif args[0] == "multiply"
      @calculator.multiply(args[1].to_i)
    elsif args[0] == "cancel"
      @calculator.cancel
    elsif args[0] == "exit"
      exit
    end

  end


end
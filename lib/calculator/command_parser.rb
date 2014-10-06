class Calculator::CommandParser

  def initialize
    @calculator = Calculator::Operations.new
  end

  def parse(inp)
    args = inp.split
    self.operate(args)
  end

  def operate(args)

    if args[0] == "add"
      @calculator.add(args[1].to_i)
    end

  end


end
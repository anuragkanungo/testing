#command controller
class Calculation::CommandParser

  OPERATIONS = {:add => "add", :subtract => "subtract", :multiply => "multiply",
               :divide => "divide", :cancel => "cancel", :exit => "exit"}

  def initialize(calculator)
    @calculator = calculator
  end

  def parse(input)
    args = input.split
    self.execute(args)
  end

  def execute(args)
    if args[0] == OPERATIONS[:add]
      @calculator.add(args[1].to_f)
    elsif args[0] == OPERATIONS[:subtract]
      @calculator.subtract(args[1].to_f)
    elsif args[0] == OPERATIONS[:multiply]
      @calculator.multiply(args[1].to_f)
    elsif args[0] == OPERATIONS[:divide]
      @calculator.divide(args[1].to_f)
    elsif args[0] == OPERATIONS[:cancel]
      @calculator.cancel
    elsif args[0] == OPERATIONS[:exit]
      exit
    else
      "Invalid Command"
    end

  end


end
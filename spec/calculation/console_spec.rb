require_relative '../spec_helper'



describe Calculation::Console do

  it "gets 'add 5' and puts 5.0" do
    calculator = Calculation::Calculator.new
    history = Calculation::History.new
    parser = Calculation::Parser.new(calculator,history)
    console = Calculation::Console.new(parser)

    expect(STDOUT).to receive(:puts).with(5.0)
    allow(STDIN).to receive(:gets).and_return("add 5\n")
    console.run
  end

end
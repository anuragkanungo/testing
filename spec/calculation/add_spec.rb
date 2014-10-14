require_relative '../spec_helper'

describe Calculation::Add do

  let(:history) {Calculation::History.new}

  it "returns 5.0 when executed for number 5 with calculator previous value 0.0" do
    calculator = Calculation::Calculator.new(0.0)
    command = Calculation::Add.new(calculator,5,history)
    expect(command.execute).to eq(5.0)
  end

  it "returns 25.0 when executed for number 10.0 with calculator previous value 15.0" do
    calculator = Calculation::Calculator.new(15.0)
    command = Calculation::Add.new(calculator,10.0,history)
    expect(command.execute).to eq(25.0)
  end

end
require_relative '../spec_helper'

describe Calculation::Divide do

  it "returns 0.0 when executed for number 5 with calculator previous value 0.0" do
    calculator = Calculation::Calculator.new(0.0)
    command = Calculation::Divide.new(calculator,5)
    expect(command.execute).to eq(0.0)
  end

  it "returns 5.0 when executed for number 5.0 with calculator previous value 25.0" do
    calculator = Calculation::Calculator.new(25.0)
    command = Calculation::Divide.new(calculator,5.0)
    expect(command.execute).to eq(5.0)
  end

end
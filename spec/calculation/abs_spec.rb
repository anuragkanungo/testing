require_relative '../spec_helper'

describe Calculation::Abs do

  it "returns 10.0 when executed with calculator previous value -10.0" do
    calculator = Calculation::Calculator.new(-10.0)
    command = Calculation::Abs.new(calculator)
    expect(command.execute).to eq(10.0)
  end

  it "returns 25.0 with calculator previous value 25.0" do
    calculator = Calculation::Calculator.new(25.0)
    command = Calculation::Abs.new(calculator)
    expect(command.execute).to eq(25.0)
  end

end
require_relative '../spec_helper'

describe Calculation::Sqr do

  it "returns 5.0 when executed with calculator previous value 25.0" do
    calculator = Calculation::Calculator.new(25.0)
    command = Calculation::Sqr.new(calculator)
    expect(command.execute).to eq(5.0)
  end

  it "returns 6.0 with calculator previous value 36.0" do
    calculator = Calculation::Calculator.new(36.0)
    command = Calculation::Sqr.new(calculator)
    expect(command.execute).to eq(6.0)
  end

end
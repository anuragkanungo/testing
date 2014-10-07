require_relative '../spec_helper'

describe Calculation::Cancel do

  it "returns 0.0 when executed with calculator previous value 0.0" do
    calculator = Calculation::Calculator.new(0.0)
    command = Calculation::Cancel.new(calculator)
    expect(command.execute).to eq(0.0)
  end

  it "returns 25.0 with calculator previous value 15.0" do
    calculator = Calculation::Calculator.new(15.0)
    command = Calculation::Cancel.new(calculator)
    expect(command.execute).to eq(0.0)
  end

end
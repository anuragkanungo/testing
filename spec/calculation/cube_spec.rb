require_relative '../spec_helper'

describe Calculation::Cube do

  let(:history) {Calculation::History.new}

  it "returns 125.0 when executed with calculator previous value 5.0" do
    calculator = Calculation::Calculator.new(5.0)
    command = Calculation::Cube.new(calculator,history)
    expect(command.execute).to eq(125.0)
  end

  it "returns 216.0 with calculator previous value 6.0" do
    calculator = Calculation::Calculator.new(6.0)
    command = Calculation::Cube.new(calculator,history)
    expect(command.execute).to eq(216.0)
  end

end
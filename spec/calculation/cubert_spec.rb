require_relative '../spec_helper'

describe Calculation::Cubert do

  let(:history) {Calculation::History.new}

  it "returns 5.0 when executed with calculator previous value 125.0" do
    calculator = Calculation::Calculator.new(125.0)
    command = Calculation::Cubert.new(calculator,history)
    expect(command.execute).to eq(5.0)
  end

  it "returns 6.0 with calculator previous value 216.0" do
    calculator = Calculation::Calculator.new(216.0)
    command = Calculation::Cubert.new(calculator,history)
    expect(command.execute).to eq(6.0)
  end

end
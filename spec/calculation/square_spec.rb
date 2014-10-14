require_relative '../spec_helper'

describe Calculation::Square do

  let(:history) {Calculation::History.new}

  it "returns 25.0 when executed with calculator previous value 5.0" do
    calculator = Calculation::Calculator.new(5.0)
    command = Calculation::Square.new(calculator,history)
    expect(command.execute).to eq(25.0)
  end

  it "returns 36.0 with calculator previous value 6.0" do
    calculator = Calculation::Calculator.new(6.0)
    command = Calculation::Square.new(calculator,history)
    expect(command.execute).to eq(36.0)
  end

end
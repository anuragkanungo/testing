require_relative '../spec_helper'

describe Calculation::Repeat do

  describe "execute" do

    let(:history) { Calculation::History.new }

    it "with argument 2 should return 0.0 " do
      calculator = Calculation::Calculator.new(50.0)
      history.insert(Calculation::Add.new(calculator,10,history))
      history.insert(Calculation::Divide.new(calculator,10,history))
      history.insert(Calculation::Subtract.new(calculator,5,history))
      command = Calculation::Repeat.new(calculator,2,history)
      expect(command.execute).to eq(0.0)
    end

    it "with argument 2 should return -4.9 " do
      calculator = Calculation::Calculator.new(50.0)
      Calculation::Add.new(calculator,10,history).execute
      Calculation::Divide.new(calculator,10,history).execute
      Calculation::Subtract.new(calculator,5,history).execute
      history.insert(Calculation::Add.new(calculator,10,history))
      history.insert(Calculation::Divide.new(calculator,10,history))
      history.insert(Calculation::Subtract.new(calculator,5,history))
      command = Calculation::Repeat.new(calculator,2,history)
      expect(command.execute).to eq(-4.9)
    end

  end
end
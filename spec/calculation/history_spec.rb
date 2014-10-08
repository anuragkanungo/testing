require_relative '../spec_helper'

describe Calculation::History do

  describe "execute" do

    let(:history) { Calculation::History.new }

    it "with argument 2 should return 0.0 " do
      calculator = Calculation::Calculator.new(50.0)
      history.insert(Calculation::Add.new(calculator,10))
      history.insert(Calculation::Divide.new(calculator,10))
      history.insert(Calculation::Subtract.new(calculator,5))
      expect(history.execute(2)).to eq(0.0)
    end


    it "with argument 2 should return 0.0 " do
      calculator = Calculation::Calculator.new(50.0)
      Calculation::Add.new(calculator,10).execute
      Calculation::Divide.new(calculator,10).execute
      Calculation::Subtract.new(calculator,5).execute
      history.insert(Calculation::Add.new(calculator,10))
      history.insert(Calculation::Divide.new(calculator,10))
      history.insert(Calculation::Subtract.new(calculator,5))
      expect(history.execute(2)).to eq(-4.9)
    end

  end
end
require_relative '../spec_helper'

describe Calculator::Operations do

  calculator = Calculator::Operations.new

  describe "Add" do

    it "should return 5 when 5 is passed as argument" do
      expect(calculator.add(5)).to eq(5.0)
    end

  end


end
require_relative '../spec_helper'

describe Calculation::Calculator do

  describe "Add" do

    it "should return 5.0 when 5 is passed as argument and previous value is 0.0" do
      calculator = Calculation::Calculator.new(0)
      expect(calculator.add(5)).to eq(5.0)
    end

    it "should return 30 when 10 is passed as argument and previous value is 20" do
      calculator = Calculation::Calculator.new(20)
      expect(calculator.add(10)).to eq(30)
    end

  end

  describe "Subtract" do

    it "should return -5.0 when 5 is passed as argument and previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.subtract(5)).to eq(-5.0)
    end

    it "should return 10.0 when 10 is passed as argument and previous value is 20.0" do
      calculator = Calculation::Calculator.new(20.0)
      expect(calculator.subtract(10)).to eq(10.0)
    end

  end

  describe "Multiply" do

    it "should return 0.0 when 5 is passed as argument and previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.multiply(5)).to eq(0.0)
    end

    it "should return 100 when 10 is passed as argument and previous value is 10" do
      calculator = Calculation::Calculator.new(10)
      expect(calculator.multiply(10)).to eq(100)
    end

  end

  describe "Cancel" do

    it "should return 0.0 when previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.cancel).to eq(0.0)
    end

    it "should return 0.0 when previous value is 10" do
      calculator = Calculation::Calculator.new(10)
      expect(calculator.cancel).to eq(0.0)
    end

  end

  describe "Divide" do

    it "should return 0.0 when 5 is passed as argument and previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.divide(5)).to eq(0.0)
    end

    it "should return 25.0 when 10 is passed as argument and previous value is 250.0" do
      calculator = Calculation::Calculator.new(250.0)
      expect(calculator.divide(10)).to eq(25.0)
    end

  end

  describe "Square" do

    it "should return 0.0 when previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.square).to eq(0.0)
    end

    it "should return 16.0 when previous value is 4.0" do
      calculator = Calculation::Calculator.new(4.0)
      expect(calculator.square).to eq(16.0)
    end
  end

  describe "SquareRoot" do

    it "should return 0 when previous value is 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.sqr).to eq(0.0)
    end

    it "should return 2.0 when previous value is 4.0" do
      calculator = Calculation::Calculator.new(4.0)
      expect(calculator.sqr).to eq(2.0)
    end
  end

  describe "Cube" do

    it "should return 0 for 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.cube).to eq(0.0)
    end

    it "should return 16.0 for 4.0" do
      calculator = Calculation::Calculator.new(4.0)
      expect(calculator.cube).to eq(64.0)
    end
  end

  describe "CubeRoot" do

    it "should return 0 fro 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.cubert).to eq(0.0)
    end

    it "should return 3.0 for 27.0" do
      calculator = Calculation::Calculator.new(27.0)
      expect(calculator.cubert.round(8)).to eq(3.0)
    end
  end

  describe "Absolute" do

    it "should return 0.0 for 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.abs).to eq(0.0)
    end

    it "should return 10.0 for -10.0" do
      calculator = Calculation::Calculator.new(-10.0)
      expect(calculator.abs).to eq(10.0)
    end

  end

  describe "Negate" do

    it "should return 0.0 for 0.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.neg).to eq(0.0)
    end

    it "should return -10.0 for 10.0" do
      calculator = Calculation::Calculator.new(10.0)
      expect(calculator.neg).to eq(-10.0)
    end

  end

end
require_relative '../spec_helper'

describe Calculation::Calculator do

  describe "Add" do

    it "should return 5.0 when 5 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.add(5)).to eq(5.0)
    end

    it "should return 10.0 when 10 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.add(10)).to eq(10.0)
    end

    describe "continous operation" do
      calculator = Calculation::Calculator.new
      it "should return 5.0 when 5 is passed as argument and previous accumulator value is 0.0" do
        expect(calculator.accumulator).to eq(0.0)
        expect(calculator.add(5)).to eq(5.0)
      end

      it "should return 15.0 when 10 is passed as argument and previous accumulator value is 5.0" do
        expect(calculator.accumulator).to eq(5.0)
        expect(calculator.add(10)).to eq(15.0)
      end

    end

  end

  describe "Subtract" do

    it "should return -5.0 when 5 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.subtract(5)).to eq(-5.0)
    end

    it "should return -10.0 when 10 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.subtract(10)).to eq(-10.0)
    end

    describe "continous operation" do
      calculator = Calculation::Calculator.new
      it "should return 5.0 when 5 is passed as argument and previous accumulator value is 10.0" do
        expect(calculator.add(10)).to eq(10.0)
        expect(calculator.accumulator).to eq(10.0)
        expect(calculator.subtract(5)).to eq(5.0)
      end

      it "should return -15.0 when 20 is passed as argument and previous accumulator value is 5.0" do
        expect(calculator.accumulator).to eq(5.0)
        expect(calculator.subtract(20)).to eq(-15.0)
      end

    end

  end

  describe "Multiply" do

    it "should return 0.0 when 5 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.multiply(5)).to eq(0.0)
    end

    it "should return 0.0 when 10 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.multiply(10)).to eq(0.0)
    end

    describe "continous operation" do
      calculator = Calculation::Calculator.new
      it "should return 25.0 when 5 is passed as argument and previous accumulator value is 5.0" do
        expect(calculator.add(5)).to eq(5.0)
        expect(calculator.accumulator).to eq(5.0)
        expect(calculator.multiply(5)).to eq(25.0)
      end

      it "should return 250.0 when 10 is passed as argument and previous accumulator value is 25.0" do
        expect(calculator.accumulator).to eq(25.0)
        expect(calculator.multiply(10)).to eq(250.0)
      end

    end

  end

  describe "Cancel" do

    it "should return 0.0 " do
      calculator = Calculation::Calculator.new
      expect(calculator.cancel).to eq(0.0)
    end

    it "should return 0.0 when accumulator is 10" do
      calculator = Calculation::Calculator.new
      calculator.add(10.0)
      expect(calculator.cancel).to eq(0.0)
    end

  end

  describe "Divide" do

    it "should return 0.0 when 5 is passed as argument" do
      calculator = Calculation::Calculator.new
      expect(calculator.divide(5)).to eq(0.0)
    end

    it "should return 25.0 when 10 is passed as argument and previous accumulator value is 250.0" do
      calculator = Calculation::Calculator.new
      expect(calculator.add(250)).to eq(250.0)
      expect(calculator.accumulator).to eq(250.0)
      expect(calculator.divide(10)).to eq(25.0)
    end

  end

  describe "Square" do

    it "should return 0" do
      calculator = Calculation::Calculator.new
      expect(calculator.square).to eq(0.0)
    end

    it "should return 16.0" do
      calculator = Calculation::Calculator.new
      calculator.add(4)
      expect(calculator.accumulator).to eq(4.0)
      expect(calculator.square).to eq(16.0)
    end
  end

end
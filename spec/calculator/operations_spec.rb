require_relative '../spec_helper'

describe Calculator::Operations do

  describe "Add" do

    it "should return 5.0 when 5 is passed as argument" do
      calculator = Calculator::Operations.new
      expect(calculator.add(5)).to eq(5.0)
    end

    it "should return 10.0 when 10 is passed as argument" do
      calculator = Calculator::Operations.new
      expect(calculator.add(10)).to eq(10.0)
    end

    describe "continous operation" do
      calculator = Calculator::Operations.new
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
      calculator = Calculator::Operations.new
      expect(calculator.subtract(5)).to eq(-5.0)
    end

    it "should return -10.0 when 10 is passed as argument" do
      calculator = Calculator::Operations.new
      expect(calculator.subtract(10)).to eq(-10.0)
    end

    describe "continous operation" do
      calculator = Calculator::Operations.new
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
      calculator = Calculator::Operations.new
      expect(calculator.multiply(5)).to eq(0.0)
    end

    it "should return 0.0 when 10 is passed as argument" do
      calculator = Calculator::Operations.new
      expect(calculator.multiply(10)).to eq(0.0)
    end

    describe "continous operation" do
      calculator = Calculator::Operations.new
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



end
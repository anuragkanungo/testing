require_relative '../spec_helper'

describe Calculation::Parser do

  let(:history) {Calculation::History.new}
  
  describe "parse command from console" do

    it "if + 5 is given should return 5.0 when previous value is 0.0" do
      calculator = Calculation::Calculator.new(0.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("+ 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(5.0)
    end

    it "if - 5 is given should return -5.0 when previous value is 0.0" do
      calculator = Calculation::Calculator.new(0.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("- 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(-5.0)
    end

    it "if * 5 is given should return 40.0 when previous value is 8.0" do
      calculator = Calculation::Calculator.new(8.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("* 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if * 4 is given should return 160.0 when previous value is 40.0" do
      calculator = Calculation::Calculator.new(40.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("* 4\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(160.0)
    end

    it "if / 4 is given should return 40.0 when previous value is 160.0" do
      calculator = Calculation::Calculator.new(160.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("/ 4\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if square is given should return 1600.0 when previous value is 40.0" do
      calculator = Calculation::Calculator.new(40.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("square\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(1600.0)
    end

    it "if sqr is given should return 40.0 when previous value is 1600.0" do
      calculator = Calculation::Calculator.new(1600.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("sqr\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if cube is given should return 512.0 when previous value is 8.0" do
      calculator = Calculation::Calculator.new(8.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("cube\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(512.0)
    end

    it "if cubert is given should return 9.0 when previous value is 729.0" do
      calculator = Calculation::Calculator.new(729.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("cubert\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(9.0)
    end

    it "if abs is given should return 40.0 for 40" do
      calculator = Calculation::Calculator.new(40.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("abs\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if abs is given should return 20.0 for -20" do
      calculator = Calculation::Calculator.new(-20.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("abs\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(20.0)
    end

    it "if neg is given should return -20.0 for 20" do
      calculator = Calculation::Calculator.new(20.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("neg\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(-20.0)
    end

    it "if neg is given should return 10.0 for -10" do
      calculator = Calculation::Calculator.new(-10.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("neg\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(10.0)
    end

    it "if c is given should return 0.0" do
      calculator = Calculation::Calculator.new(50.0)
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("c\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(0.0)
    end

    it "if exit is given program should exit" do
      calculator = Calculation::Calculator.new
      parser = Calculation::Parser.new(calculator,history)
      stdin = StringIO.new("exit\n")
      string = stdin.gets.chomp
      begin
        parser.parse(string)
      rescue SystemExit => e
        expect(e.status).to_not eq 1
        expect(e.status).to eq 0
      end
    end

    it "if repeat is given with argument 3 should return 180.0" do
      calculator = Calculation::Calculator.new(0.0)
      parser = Calculation::Parser.new(calculator,history)
      parser.parse(StringIO.new("+ 10\n").gets.chomp)
      parser.parse(StringIO.new("* 5\n").gets.chomp)
      parser.parse(StringIO.new("- 20\n").gets.chomp)
      expect(parser.parse(StringIO.new("repeat 3\n").gets.chomp)).to eq(180.0)
    end


    it "if repeat is given with argument 2 should return -4.9 " do
      calculator = Calculation::Calculator.new(50.0)
      parser = Calculation::Parser.new(calculator,history)
      parser.parse(StringIO.new("+ 10\n").gets.chomp)
      parser.parse(StringIO.new("/ 10\n").gets.chomp)
      parser.parse(StringIO.new("- 5\n").gets.chomp)
      expect(parser.parse(StringIO.new("repeat 2\n").gets.chomp)).to eq(-4.9)
    end


  end


end
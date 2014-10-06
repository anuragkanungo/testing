require_relative '../spec_helper'

describe Calculation::CommandParser do

  parser = Calculation::CommandParser.new(Calculation::Calculator.new)

  describe "parse command from console" do

    it "if add 5 is given should return 5.0" do
      stdin = StringIO.new("add 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(5.0)
    end

    it "if add 10 is given should return 15.0" do
      stdin = StringIO.new("add 10\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(15.0)
    end

    it "if subtract 5 is given should return 10.0" do
      stdin = StringIO.new("subtract 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(10.0)
    end

    it "if subtract 2 is given should return 8.0" do
      stdin = StringIO.new("subtract 2\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(8.0)
    end

    it "if multiply 5 is given should return 40.0" do
      stdin = StringIO.new("multiply 5\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if multiply 4 is given should return 160.0" do
      stdin = StringIO.new("multiply 4\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(160.0)
    end

    it "if divide 4 is given should return 40.0" do
      stdin = StringIO.new("divide 4\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if square is given should return 1600.0" do
      stdin = StringIO.new("square\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(1600.0)
    end

    it "if sqrt is given should return 40.0" do
      stdin = StringIO.new("sqrt\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(40.0)
    end

    it "if cancel is given should return 0.0" do
      stdin = StringIO.new("cancel\n")
      string = stdin.gets.chomp
      expect(parser.parse(string)).to eq(0.0)
    end

    it "if exit is give should exit" do
      stdin = StringIO.new("exit\n")
      string = stdin.gets.chomp
      begin
        parser.parse(string)
      rescue SystemExit => e
        expect(e.status).to_not eq 1
        expect(e.status).to eq 0
      end
    end

  end


end
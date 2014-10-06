require_relative '../spec_helper'

describe Calculator::CommandParser do

  parser = Calculator::CommandParser.new

  describe "Parse Command from CLI" do

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



  end


end
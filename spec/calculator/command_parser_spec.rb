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



  end


end
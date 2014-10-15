#console for calculator
class Calculation::Console

  def initialize(parser,window)
    @parser = parser
    @window = window
  end

  def start
    loop { run }
  end

  def run
   @parser.parse(STDIN.gets)
  end

end



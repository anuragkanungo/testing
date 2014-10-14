#gui for calculator
class Calculation::Gui

  def initialize(parser)
    @parser = parser
  end

  def start
    loop { run }
  end

  def run
   @parser.parse(STDIN.gets)
  end

end



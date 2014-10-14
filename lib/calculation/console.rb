#command line IO
class Calculation::Console

  def initialize(parser)
    @parser = parser
  end

  def start
    loop { run }
  end

  def run
    puts @parser.parse(STDIN.gets)
  end

end



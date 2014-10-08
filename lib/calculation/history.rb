#maintais command history
class Calculation::History

  def initialize
    @history = []
  end

  def insert(input)
    @history << input
  end

  def execute(number)
    if number <= @history.length
      temp = @history[(-number)..-1]
      temp.inject(0) { |result,x| x.execute}
    end
  end

end
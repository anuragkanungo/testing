#stores command history
class Calculation::History

  def initialize
    @store = []
  end

  def insert(input)
    @store << input
  end

  def last(number)
    if within_bounds?(number) && positive?(number)
      @store.slice((-number),number)
    else
      []
    end
  end

  private

  def within_bounds?(number)
    number <= @store.length
  end

  def positive?(number)
    number > 0
  end

end
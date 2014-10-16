#process button clicks
class Gui::Processor

  def initialize(string)
    @operation = ""
    @value = ""
    @string = string
  end

  def execute_digit(text)
    unless @operation.empty?
      @string = @value << text
    end
    @string
  end

  def execute_operation(parser,text)
    if text == "c"
      @string = parser.parse("#{text}").to_s
      @operation = ""
    else
      self.calculate(parser)
      @operation = text
    end
    @string
  end


  def calculate(parser)
    unless @operation.empty? || @value.empty?
      @string = parser.parse("#{@operation} #{@value}").to_s
      @value = ""
    end
  end



end
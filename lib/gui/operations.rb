#buttons with operations
class Gui::Operations < Gui::Button

  def calculate(parser,operation,value,string)
    unless operation.empty? || value.empty?
      string =  parser.parse("#{operation} #{value}").to_s
      value = ""
    end
    [value,string]
  end

  def execute(parser,operation,value,string)
    if @text == "c"
      string = parser.parse("#{@text}").to_s
      operation = ""
    else
      value,string = self.calculate(parser,operation,value,string)
      operation = @text
    end

    [operation,value,string]
  end


end
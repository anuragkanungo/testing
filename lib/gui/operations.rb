#buttons with operations
class Gui::Operations < Gui::Button

  def calculate(parser,operation,value,text)
    unless operation.empty? || value.empty?
      text =  parser.parse("#{operation} #{value}").to_s
      value = ""
    end
    [value,text]
  end

  def execute(parser,operation,value,text)
    result = self.calculate(parser,operation,value,text)
    if @text == "c"
      operation = "cancel"
    elsif @text == "+"
      operation = "add"
    elsif @text == "-"
      operation = "subtract"
    elsif @text == "*"
      operation = "multiply"
    elsif @text == "/"
      operation = "divide"
    elsif @text == "="
      operation = ""
    end

    [operation] + result
  end


end
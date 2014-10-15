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
    value,string = self.calculate(parser,operation,value,string)

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

    [operation,value,string]
  end


end
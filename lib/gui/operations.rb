#buttons with operations
class Gui::Operations < Gui::Button

  def calculate(parser,operation,value,text)
    unless operation.empty? || value.empty?
      text =  parser.parse("#{operation} #{value}").to_s
      value = ""
    end
    [value,text]
  end

  def execute(response,parser,operation,value,text)
    result = self.calculate(parser,operation,value,text)
    if response == "c"
      operation = "cancel"
    elsif response == "+"
      operation = "add"
    elsif response == "-"
      operation = "subtract"
    elsif response == "*"
      operation = "multiply"
    elsif response == "/"
      operation = "divide"
    elsif response == "="
      operation = ""
    end

    [operation] + result
  end


end
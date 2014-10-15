#buttons with digits
class Gui::Digits < Gui::Button

  def execute(parser,operation,value,string)
    unless operation.empty?
     string = value << @text
    end
    [operation,value,string]
  end

end
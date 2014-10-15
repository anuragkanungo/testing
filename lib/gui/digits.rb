#buttons with digits
class Gui::Digits < Gui::Button

  def execute(response,parser,operation,value,text)
    text = value << response unless operation.empty?
    [operation,value,text]
  end


end
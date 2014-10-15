#buttons with digits
class Gui::Digits < Gui::Button

  def execute(response,parser,operation,value,text)
    unless operation.empty?
     text = value << response
    end
    [operation,value,text]
  end


end
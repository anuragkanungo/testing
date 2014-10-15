#buttons with digits
class Gui::Digits < Gui::Button

  def execute(parser,operation,value,text)
    unless operation.empty?
     text = value << @text
    end
    [operation,value,text]
  end

end
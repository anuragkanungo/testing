#interface for calculator
class Gui::Interface

  def initialize(x,y,width,height,color)
    @x = x
    @y = y
    @width = width
    @height = height
    @color = color
  end

  def add_buttons
    @buttons = []
    button1 = Gui::Button.new(@x,@y,@width,@height,@color,"1")
    @buttons << button1
    button2 = Gui::Button.new(@x+@width,@y,@width,@height,@color,"2")
    @buttons << button2
    button3 = Gui::Button.new(@x+(2*@width),@y,@width,@height,@color,"3")
    @buttons << button3
    button4 = Gui::Button.new(@x,@y+@height,@width,@height,@color,"4")
    @buttons << button4
    button5 = Gui::Button.new(@x+@width,@y+@height,@width,@height,@color,"5")
    @buttons << button5
    button6 = Gui::Button.new(@x+(2*@width),@y+@height,@width,@height,@color,"6")
    @buttons << button6
    button7 = Gui::Button.new(@x,@y+(2*@height),@width,@height,@color,"7")
    @buttons << button7
    button8 = Gui::Button.new(@x+@width,@y+(2*@height),@width,@height,@color,"8")
    @buttons << button8
    button9 = Gui::Button.new(@x+(2*@width),@y+(2*@height),@width,@height,@color,"9")
    @buttons << button9
  end

  def draw(graphics)
    self.add_buttons
    @buttons.each do |button|
      button.draw(graphics)
    end
  end

  def handle_click(x,y)
    @buttons.map do |button|
       button.get_text if button.handle_click(x,y)
    end.compact.first
  end

end
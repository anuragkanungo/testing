#interface for calculator
class Gui::Interface

  def initialize(x,y,width,height,color)
    @x = x
    @y = y
    @width = width
    @height = height
    @color = color
  end

  def draw(graphics)
    button1 = Gui::Button.new(@x,@y,@width,@height,@color,"1")
    button1.draw(graphics)
    button2 = Gui::Button.new(@x+@width,@y,@width,@height,@color,"2")
    button2.draw(graphics)
    button3 = Gui::Button.new(@x+(2*@width),@y,@width,@height,@color,"3")
    button3.draw(graphics)
  end

end
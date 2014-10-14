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
    button4 = Gui::Button.new(@x,@y+@height,@width,@height,@color,"4")
    button4.draw(graphics)
    button5 = Gui::Button.new(@x+@width,@y+@height,@width,@height,@color,"5")
    button5.draw(graphics)
    button6 = Gui::Button.new(@x+(2*@width),@y+@height,@width,@height,@color,"6")
    button6.draw(graphics)
    button7 = Gui::Button.new(@x,@y+(2*@height),@width,@height,@color,"7")
    button7.draw(graphics)
    button8 = Gui::Button.new(@x+@width,@y+(2*@height),@width,@height,@color,"8")
    button8.draw(graphics)
    button9 = Gui::Button.new(@x+(2*@width),@y+(2*@height),@width,@height,@color,"9")
    button9.draw(graphics)
  end

end
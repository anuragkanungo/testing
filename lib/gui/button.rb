# clickable button
class Gui::Button

  attr_reader :text,:x1,:y1,:width,:height

  def initialize(x1,y1,width,height,color,text)
    @x1 = x1
    @y1 = y1
    @width = width
    @height = height
    @color = color
    @text = text
    @body = Gui::Rectangle.new(x1,y1,width,height,color)
  end

  def draw(graphics)
    @body.draw(graphics)
    graphics.drawString(@text,@x1+5,@y1-5)
  end

  def handle_click(x,y)
    @body.inside?(x,y+@height/2)
  end

end
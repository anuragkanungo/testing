# clickable button
class Gui::Button

  def initialize(x1,y1,width,height,color,text)
    @x1 = x1
    @y1 = y1
    @width = width
    @height = height
    @color = color
    @text = text
    @body = Gui::Rectangle.new(@x1,@y1,@width,@height,@color)
  end

  def draw(graphics)
    @body.draw(graphics)
    graphics.drawString(@text,@x1+@width/2,@y1-@height/2)
    Gui::Rectangle.new(@x1 - 2,@y1 - 2,@width,@height,@color).draw(graphics)
  end

  def animate(graphics)
    Gui::Rectangle.new(@x1-1,@y1-1,@width,@height,Color.red).draw(graphics)
  end

  def handle_click(x,y)
    @body.inside?(x,y+@height/2)
  end

end

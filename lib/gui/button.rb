# clickable button
class Gui::Button

  attr_reader :text

  def initialize(x1,y1,width,height,color,text)
    @x1 = x1
    @y1 = y1
    @width = width*0.8
    @height = height*0.8
    @color = color
    @text = text
    @body = Gui::Rectangle.new(@x1,@y1,@width,@height,@color)
  end

  def draw(graphics)
    @body.draw(graphics)
    graphics.drawString(@text,@x1+@width/2,@y1-@height/2)
    Gui::Rectangle.new(@x1 - 2,@y1 - 2,@width,@height,@color).draw(graphics)
  end

  def animate
    Gui::Rectangle.new(@x1-1,@y1-1,@width,@height,Color.red)
  end

  def handle_click(x,y)
    @body.inside?(x,y+@height/2)
  end

end
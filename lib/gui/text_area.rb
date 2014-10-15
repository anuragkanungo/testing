#models text_area
class Gui::TextArea

  def initialize(x,y,width,height,color,text)
    @x = x
    @y = y
    @width = width * 0.95
    @height = height * 0.8
    @color = color
    @text = text
    @body = Gui::Rectangle.new(@x,@y,@width,@height,@color)
  end

  def draw(graphics)
    @body.draw(graphics)
    graphics.drawString(@text,@x+5,@y-5)
  end

  def update(string)
    @text = string
    self
  end


end
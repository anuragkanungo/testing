# geometrical rectangle
class Gui::Rectangle

  def initialize(x1,y1,width,height,color)
    @x1 = x1
    @y1 = y1
    @width = width
    @height = height
    @color = color
  end

  def draw(graphics)
    graphics.setColor(@color)
    graphics.draw_line(@x1,@y1,@x1 + @width, @y1)
    graphics.draw_line(@x1,@y1,@x1, @y1 - @height)
    graphics.draw_line(@x1 + @width,@y1 - @height,@x1 + @width, @y1)
    graphics.draw_line(@x1 + @width,@y1 - @height,@x1 , @y1 - @height)
  end

  def inside?(x,y)
    x >= @x1 && x <= @x1 + @width && y >= @y1 && y <= @y1 +@height
  end

end
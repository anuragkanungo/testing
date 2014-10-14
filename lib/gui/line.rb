#geometrical line
class Gui::Line

  def initialize(x1,y1,x2,y2,color)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
    @color = color
  end

  def draw(graphics)
    graphics.setColor(@color)
    graphics.draw_line(@x1,@y1,@x2,@y2)
  end

end

#buttons with digits
class Gui::Digits

  def initialize(x1,y1,width,height,color,text,processor)
    @text = text
    @processor = processor
    @button = Gui::Button.new(x1,y1,width,height,color,text)
  end

  def execute
    @processor.execute_digit(@text)
  end

  def draw(graphics)
      @button.draw(graphics)
  end

  def animate(graphics)
    @button.animate(graphics)
  end

  def handle_click(x,y)
    @button.handle_click(x,y)
  end

end

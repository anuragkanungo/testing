#interface for calculator
class Gui::Window

  def initialize(x,y,width,height,color,parser)
    @x = x
    @y = y
    @width = width
    @height = height
    @color = color
    @text = "0"
    @parser = parser
    @operation = ""
    @value = ""
    @animated_x = 0
    @animated_y = 0
    @animates_width = 0
    @animated_height = 0
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
    button_point = Gui::Button.new(@x,@y+(3*@height),@width,@height,@color,".")
    @buttons << button_point
    button0 = Gui::Button.new(@x+@width,@y+(3*@height),@width,@height,@color,"0")
    @buttons << button0
    button_equal = Gui::Button.new(@x+(2*@width),@y+(3*@height),@width,@height,@color,"=")
    @buttons << button_equal
    button_add = Gui::Button.new(@x+(3*@width),@y,@width,@height,@color,"+")
    @buttons << button_add
    button_sub = Gui::Button.new(@x+(3*@width),@y+@height,@width,@height,@color,"-")
    @buttons << button_sub
    button_mul = Gui::Button.new(@x+(3*@width),@y+(2*@height),@width,@height,@color,"*")
    @buttons << button_mul
    button_divide = Gui::Button.new(@x+(3*@width),@y+(3*@height),@width,@height,@color,"/")
    @buttons << button_divide
    button_cancel = Gui::Button.new(@x+(4*@width),@y+(3*@height),@width,@height,@color,"c")
    @buttons << button_cancel
  end

  def draw(graphics)
    self.add_buttons
    @buttons.each do |button|
      button.draw(graphics)
      Gui::Rectangle.new(button.x1 - 2,button.y1 - 2,button.width,button.height,@color).draw(graphics)
    end
    Gui::Rectangle.new(@animated_x,@animated_y,@animates_width,@animated_height,Color.red).draw(graphics)
    Gui::TextArea.new(@x,@y-@height,@width*4,@height,@color,@text).draw(graphics)
  end

  def animate(button)
    @animated_x = button.x1 - 1
    @animated_y = button.y1 - 1
    @animates_width = button.width
    @animated_height = button.height
  end

  def calculate
    unless @operation.empty?
      @text =  @parser.parse("#{@operation} #{@value}").to_s
      @value = ""
    end
  end


  def window_parser(response)
    if response == "c"
      @text =  @parser.parse("cancel").to_s
    elsif response == "+"
      self.calculate
      @operation = "add"
    elsif response == "-"
      self.calculate
      @operation = "subtract"
    elsif response == "*"
      self.calculate
      @operation = "multiply"
    elsif response == "/"
      self.calculate
      @operation = "divide"
    elsif response == "="
      self.calculate
      @operation = ""
    else
      @text = @value << response unless @operation.empty?
    end
  end

  def handle_click(x,y)
    button = @buttons.map do |button|
              button if button.handle_click(x,y)
    end.compact.first

    unless button.nil?
      self.animate(button)
      response = button.text
      self.window_parser(response)

      response
    end

  end
end
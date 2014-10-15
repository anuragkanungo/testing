#interface for calculator
class Gui::Window

  def initialize(x,y,width,height,color,parser)
    @x = x
    @y = y
    @width = width
    @height = height
    @color = color
    @string = "0"
    @parser = parser
    @operation = ""
    @value = ""
    @button_clicked = nil
    @text_area = Gui::TextArea.new(@x,@y-@height,@width*4,@height,@color,@string)
  end

  def add_buttons
    @buttons = []
    button1 = Gui::Digits.new(@x,@y,@width,@height,@color,"1")
    @buttons << button1
    button2 = Gui::Digits.new(@x+@width,@y,@width,@height,@color,"2")
    @buttons << button2
    button3 = Gui::Digits.new(@x+(2*@width),@y,@width,@height,@color,"3")
    @buttons << button3
    button4 = Gui::Digits.new(@x,@y+@height,@width,@height,@color,"4")
    @buttons << button4
    button5 = Gui::Digits.new(@x+@width,@y+@height,@width,@height,@color,"5")
    @buttons << button5
    button6 = Gui::Digits.new(@x+(2*@width),@y+@height,@width,@height,@color,"6")
    @buttons << button6
    button7 = Gui::Digits.new(@x,@y+(2*@height),@width,@height,@color,"7")
    @buttons << button7
    button8 = Gui::Digits.new(@x+@width,@y+(2*@height),@width,@height,@color,"8")
    @buttons << button8
    button9 = Gui::Digits.new(@x+(2*@width),@y+(2*@height),@width,@height,@color,"9")
    @buttons << button9
    button_point = Gui::Digits.new(@x,@y+(3*@height),@width,@height,@color,".")
    @buttons << button_point
    button0 = Gui::Digits.new(@x+@width,@y+(3*@height),@width,@height,@color,"0")
    @buttons << button0
    button_equal = Gui::Operations.new(@x+(2*@width),@y+(3*@height),@width,@height,@color,"=")
    @buttons << button_equal
    button_add = Gui::Operations.new(@x+(3*@width),@y,@width,@height,@color,"+")
    @buttons << button_add
    button_sub = Gui::Operations.new(@x+(3*@width),@y+@height,@width,@height,@color,"-")
    @buttons << button_sub
    button_mul = Gui::Operations.new(@x+(3*@width),@y+(2*@height),@width,@height,@color,"*")
    @buttons << button_mul
    button_divide = Gui::Operations.new(@x+(3*@width),@y+(3*@height),@width,@height,@color,"/")
    @buttons << button_divide
    button_cancel = Gui::Operations.new(@x+(4*@width),@y+(3*@height),@width,@height,@color,"c")
    @buttons << button_cancel
  end

  def draw(graphics)
    self.add_buttons
    @buttons.each do |button|
      button.draw(graphics)
    end
    @text_area.update(@string).draw(graphics)
    @button_clicked.animate.draw(graphics) unless @button_clicked.nil?
  end


  def handle_click(x,y)
    @button_clicked = @buttons.map do |button|
              button if button.handle_click(x,y)
    end.compact.first

    unless @button_clicked.nil?
      @operation, @value, @string = @button_clicked.execute(@parser,@operation,@value,@string)
      @button_clicked.text
    end

  end
end
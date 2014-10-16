#interface for calculator
class Gui::Window

  def initialize(x,y,width,height,color,parser)
    @x = x
    @y = y
    @width = width
    @height = height
    @padded_width = width * 0.8
    @padded_width = height * 0.8
    @color = color
    @string = "0"
    @parser = parser
    @button_clicked = nil
    @text_area = Gui::TextArea.new(@x,@y-@height,@width*3.8,@height*0.8,@color,@string)
    @buttons = []
    @processor = Gui::Processor.new(@string)
  end

  def add_buttons
    button1 = Gui::Digits.new(@x,@y,@padded_width,@padded_width,@color,"1",@processor)
    @buttons << button1
    button2 = Gui::Digits.new(@x+@width,@y,@padded_width,@padded_width,@color,"2",@processor)
    @buttons << button2
    button3 = Gui::Digits.new(@x+(2*@width),@y,@padded_width,@padded_width,@color,"3",@processor)
    @buttons << button3
    button4 = Gui::Digits.new(@x,@y+@height,@padded_width,@padded_width,@color,"4",@processor)
    @buttons << button4
    button5 = Gui::Digits.new(@x+@width,@y+@height,@padded_width,@padded_width,@color,"5",@processor)
    @buttons << button5
    button6 = Gui::Digits.new(@x+(2*@width),@y+@height,@padded_width,@padded_width,@color,"6",@processor)
    @buttons << button6
    button7 = Gui::Digits.new(@x,@y+(2*@height),@padded_width,@padded_width,@color,"7",@processor)
    @buttons << button7
    button8 = Gui::Digits.new(@x+@width,@y+(2*@height),@padded_width,@padded_width,@color,"8",@processor)
    @buttons << button8
    button9 = Gui::Digits.new(@x+(2*@width),@y+(2*@height),@padded_width,@padded_width,@color,"9",@processor)
    @buttons << button9
    button_point = Gui::Digits.new(@x,@y+(3*@height),@padded_width,@padded_width,@color,".",@processor)
    @buttons << button_point
    button0 = Gui::Digits.new(@x+@width,@y+(3*@height),@padded_width,@padded_width,@color,"0",@processor)
    @buttons << button0
    button_equal = Gui::Operations.new(@x+(2*@width),@y+(3*@height),@padded_width,@padded_width,@color,"=",@parser,@processor)
    @buttons << button_equal
    button_add = Gui::Operations.new(@x+(3*@width),@y,@padded_width,@padded_width,@color,"+",@parser,@processor)
    @buttons << button_add
    button_sub = Gui::Operations.new(@x+(3*@width),@y+@height,@padded_width,@padded_width,@color,"-",@parser,@processor)
    @buttons << button_sub
    button_mul = Gui::Operations.new(@x+(3*@width),@y+(2*@height),@padded_width,@padded_width,@color,"*",@parser,@processor)
    @buttons << button_mul
    button_divide = Gui::Operations.new(@x+(3*@width),@y+(3*@height),@padded_width,@padded_width,@color,"/",@parser,@processor)
    @buttons << button_divide
    button_cancel = Gui::Operations.new(@x+(4*@width),@y+(3*@height),@padded_width,@padded_width,@color,"c",@parser,@processor)
    @buttons << button_cancel
  end

  def draw(graphics)
    self.add_buttons
    @buttons.each do |button|
      button.draw(graphics)
    end
    @text_area.update(@string,graphics)
    @button_clicked.animate(graphics) unless @button_clicked.nil?
  end


  def handle_click(x,y)
    @button_clicked = @buttons.map do |button|
                        button if button.handle_click(x,y)
                      end.compact.first
    @string = @button_clicked.execute unless @button_clicked.nil?
  end
end
require_relative '../gui_spec_helper'
require_relative '../spec_helper'

describe Gui::Window do

  calculator = Calculation::Calculator.new
  history = Calculation::History.new
  parser = Calculation::Parser.new(calculator,history)

  it "contains button with text 0-9 and operations" do

    x = 100
    y = 100
    width = 20
    height = 20
    padded_width = 16
    padded_height = 16
    graphics = double()
    interface = Gui::Window.new(x,y,width,height,Color.black,parser)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("1",108,92)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("2",128,92)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("3",148,92)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x - (2 * width)
    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("4",108,112)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("5",128,112)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("6",148,112)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x - (2 * width)
    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("7",108,132)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("8",128,132)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("9",148,132)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x - (2 * width)
    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with(".",108,152)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("0",128,152)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("=",148,152)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x + width
    y = y - (3*height)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("+",168,92)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("-",168,112)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("*",168,132)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)

    y = y + height
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("/",168,152)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = x + width
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("c",188,152)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x - 2 + padded_width, y-2)
    expect(graphics).to receive(:draw_line).with(x-2,y-2,x-2,y - 2 - padded_height)
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2 + padded_width, y - 2 )
    expect(graphics).to receive(:draw_line).with(x-2 + padded_width,y - 2 - padded_height,x - 2  , y - 2 - padded_height)


    x = 100
    y = 80
    padded_width = 76
    padded_height = 16
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(x,y,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x,y,x,y - padded_height)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x + padded_width, y)
    expect(graphics).to receive(:draw_line).with(x + padded_width,y - padded_height,x , y - padded_height)
    expect(graphics).to receive(:drawString).with("0",105,75)

    interface.draw(graphics)
  end

  it "handles click" do
    interface = Gui::Window.new(100,100,20,20,Color.black,parser)
    interface.add_buttons
    expect(interface.handle_click(125,125)).to eq("0")
  end

end
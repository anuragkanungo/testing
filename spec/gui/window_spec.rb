require_relative '../gui_spec_helper'
require_relative '../spec_helper'

describe Gui::Window do

  calculator = Calculation::Calculator.new
  history = Calculation::History.new
  parser = Calculation::Parser.new(calculator,history)

  it "contains button with text 0-9 and operations" do

    graphics = double()
    interface = Gui::Window.new(100,100,20,20,Color.black,parser)
    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(100,100,120,100)
    expect(graphics).to receive(:draw_line).with(100,100,100,80)
    expect(graphics).to receive(:draw_line).with(120,80,120,100)
    expect(graphics).to receive(:draw_line).with(120,80,100,80)
    expect(graphics).to receive(:drawString).with("1",105,95)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(120,100,140,100)
    expect(graphics).to receive(:draw_line).with(120,100,120,80)
    expect(graphics).to receive(:draw_line).with(140,80,140,100)
    expect(graphics).to receive(:draw_line).with(140,80,120,80)
    expect(graphics).to receive(:drawString).with("2",125,95)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(140,100,160,100)
    expect(graphics).to receive(:draw_line).with(140,100,140,80)
    expect(graphics).to receive(:draw_line).with(160,80,160,100)
    expect(graphics).to receive(:draw_line).with(160,80,140,80)
    expect(graphics).to receive(:drawString).with("3",145,95)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(100,120,120,120)
    expect(graphics).to receive(:draw_line).with(100,120,100,100)
    expect(graphics).to receive(:draw_line).with(120,100,120,120)
    expect(graphics).to receive(:draw_line).with(120,100,100,100)
    expect(graphics).to receive(:drawString).with("4",105,115)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(120,120,140,120)
    expect(graphics).to receive(:draw_line).with(120,120,120,100)
    expect(graphics).to receive(:draw_line).with(140,100,140,120)
    expect(graphics).to receive(:draw_line).with(140,100,120,100)
    expect(graphics).to receive(:drawString).with("5",125,115)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(140,120,160,120)
    expect(graphics).to receive(:draw_line).with(140,120,140,100)
    expect(graphics).to receive(:draw_line).with(160,100,160,120)
    expect(graphics).to receive(:draw_line).with(160,100,140,100)
    expect(graphics).to receive(:drawString).with("6",145,115)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(100,140,120,140)
    expect(graphics).to receive(:draw_line).with(100,140,100,120)
    expect(graphics).to receive(:draw_line).with(120,120,120,140)
    expect(graphics).to receive(:draw_line).with(120,120,100,120)
    expect(graphics).to receive(:drawString).with("7",105,135)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(120,140,140,140)
    expect(graphics).to receive(:draw_line).with(120,140,120,120)
    expect(graphics).to receive(:draw_line).with(140,120,140,140)
    expect(graphics).to receive(:draw_line).with(140,120,120,120)
    expect(graphics).to receive(:drawString).with("8",125,135)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(140,140,160,140)
    expect(graphics).to receive(:draw_line).with(140,140,140,120)
    expect(graphics).to receive(:draw_line).with(160,120,160,140)
    expect(graphics).to receive(:draw_line).with(160,120,140,120)
    expect(graphics).to receive(:drawString).with("9",145,135)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(100,160,120,160)
    expect(graphics).to receive(:draw_line).with(100,160,100,140)
    expect(graphics).to receive(:draw_line).with(120,140,120,160)
    expect(graphics).to receive(:draw_line).with(120,140,100,140)
    expect(graphics).to receive(:drawString).with(".",105,155)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(120,160,140,160)
    expect(graphics).to receive(:draw_line).with(120,160,120,140)
    expect(graphics).to receive(:draw_line).with(140,140,140,160)
    expect(graphics).to receive(:draw_line).with(140,140,120,140)
    expect(graphics).to receive(:drawString).with("0",125,155)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(140,160,160,160)
    expect(graphics).to receive(:draw_line).with(140,160,140,140)
    expect(graphics).to receive(:draw_line).with(160,140,160,160)
    expect(graphics).to receive(:draw_line).with(160,140,140,140)
    expect(graphics).to receive(:drawString).with("=",145,155)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(160,100,180,100)
    expect(graphics).to receive(:draw_line).with(160,100,160,80)
    expect(graphics).to receive(:draw_line).with(180,80,180,100)
    expect(graphics).to receive(:draw_line).with(180,80,160,80)
    expect(graphics).to receive(:drawString).with("+",165,95)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(160,120,180,120)
    expect(graphics).to receive(:draw_line).with(160,120,160,100)
    expect(graphics).to receive(:draw_line).with(180,100,180,120)
    expect(graphics).to receive(:draw_line).with(180,100,160,100)
    expect(graphics).to receive(:drawString).with("-",165,115)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(160,140,180,140)
    expect(graphics).to receive(:draw_line).with(160,140,160,120)
    expect(graphics).to receive(:draw_line).with(180,120,180,140)
    expect(graphics).to receive(:draw_line).with(180,120,160,120)
    expect(graphics).to receive(:drawString).with("*",165,135)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(160,160,180,160)
    expect(graphics).to receive(:draw_line).with(160,160,160,140)
    expect(graphics).to receive(:draw_line).with(180,140,180,160)
    expect(graphics).to receive(:draw_line).with(180,140,160,140)
    expect(graphics).to receive(:drawString).with("/",165,155)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(180,160,200,160)
    expect(graphics).to receive(:draw_line).with(180,160,180,140)
    expect(graphics).to receive(:draw_line).with(200,140,200,160)
    expect(graphics).to receive(:draw_line).with(200,140,180,140)
    expect(graphics).to receive(:drawString).with("c",185,155)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(0,0,0,0)
    expect(graphics).to receive(:draw_line).with(0,0,0,0)
    expect(graphics).to receive(:draw_line).with(0,0,0,0)
    expect(graphics).to receive(:draw_line).with(0,0,0,0)

    expect(graphics).to receive(:setColor).with(Color.black)
    expect(graphics).to receive(:draw_line).with(180,60,180,80)
    expect(graphics).to receive(:draw_line).with(100,80,180,80)
    expect(graphics).to receive(:draw_line).with(100,80,100,60)
    expect(graphics).to receive(:draw_line).with(180,60,100,60)
    expect(graphics).to receive(:drawString).with("0",105,75)

    interface.draw(graphics)
  end

  # it "handles click" do
  #   interface = Gui::Window.new(100,100,20,20,Color.black,parser)
  #   interface.add_buttons
  #   expect(interface.handle_click(130,110)).to eq("5")
  # end

end
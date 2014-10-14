require_relative '../gui_spec_helper'

describe Gui::Interface do

  it "contains button with text 1-9" do
    graphics = double()
    interface = Gui::Interface.new(100,100,20,20,Color.black)
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

    interface.draw(graphics)
  end

end
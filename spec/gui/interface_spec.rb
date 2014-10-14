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
    interface.draw(graphics)
  end

end
require_relative '../gui_spec_helper'

describe Gui::TextArea do

  it "draws text area" do
    text_area = Gui::TextArea.new(200,200,50,40,Color.red,"default text")
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(200,200,250,200)
    expect(graphics).to receive(:draw_line).with(200,200,200,160)
    expect(graphics).to receive(:draw_line).with(250,160,250,200)
    expect(graphics).to receive(:draw_line).with(250,160,200,160)
    expect(graphics).to receive(:drawString).with("default text",205,195)
    text_area.draw(graphics)
  end

end
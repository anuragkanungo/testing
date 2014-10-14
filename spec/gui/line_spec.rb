require_relative "../gui_spec_helper"

describe Gui::Line do

  #canvas = Shape::Canvas.new
  line = Gui::Line.new(100,100,500,500,Color.red)
  line1 = Gui::Line.new(200,200,600,300,Color.blue)


  it "draws the line" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(100,100,500,500)
    line.draw(graphics)
  end

  it "draws the line" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:draw_line).with(200,200,600,300)
    line1.draw(graphics)
  end

end
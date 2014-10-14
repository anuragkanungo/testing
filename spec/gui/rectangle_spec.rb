require_relative "../gui_spec_helper"

describe Gui::Rectangle do

  rectangle = Gui::Rectangle.new(100,100,50,30,Color.red)
  rectangle1 = Gui::Rectangle.new(200,200,100,150,Color.blue)

  it "draws the rectangle" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(100,100,150,100)
    expect(graphics).to receive(:draw_line).with(100,100,100,70)
    expect(graphics).to receive(:draw_line).with(150,70,150,100)
    expect(graphics).to receive(:draw_line).with(150,70,100,70)
    rectangle.draw(graphics)
  end

  it "draws the rectangle" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:draw_line).with(200,200,300,200)
    expect(graphics).to receive(:draw_line).with(200,200,200,50)
    expect(graphics).to receive(:draw_line).with(300,50,300,200)
    expect(graphics).to receive(:draw_line).with(300,50,200,50)
    rectangle1.draw(graphics)
  end

end
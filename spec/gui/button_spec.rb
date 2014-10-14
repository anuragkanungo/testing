require_relative "../gui_spec_helper"

describe Gui::Button do

  button = Gui::Button.new(100,100,50,30,Color.red,"test")
  button1 = Gui::Button.new(200,200,100,150,Color.blue,"other")

  it "draws the button" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(100,100,150,100)
    expect(graphics).to receive(:draw_line).with(100,100,100,70)
    expect(graphics).to receive(:draw_line).with(150,70,150,100)
    expect(graphics).to receive(:draw_line).with(150,70,100,70)
    expect(graphics).to receive(:drawString).with("test",105,95)
    button.draw(graphics)
  end

  it "draws the button" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:draw_line).with(200,200,300,200)
    expect(graphics).to receive(:draw_line).with(200,200,200,50)
    expect(graphics).to receive(:draw_line).with(300,50,300,200)
    expect(graphics).to receive(:draw_line).with(300,50,200,50)
    expect(graphics).to receive(:drawString).with("other",205,195)
    button1.draw(graphics)
  end

  it "logs the button click" do
    expect(button.handle_click(120,120)).to eq(true)
  end

end
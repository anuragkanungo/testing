require_relative "../gui_spec_helper"

describe Gui::Digits do

  button = Gui::Digits.new(100,100,50,30,Color.red,"test")
  button1 = Gui::Digits.new(200,200,100,150,Color.blue,"other")

  it "draws the button" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(100,100,150,100)
    expect(graphics).to receive(:draw_line).with(100,100,100,70)
    expect(graphics).to receive(:draw_line).with(150,70,150,100)
    expect(graphics).to receive(:draw_line).with(150,70,100,70)
    expect(graphics).to receive(:drawString).with("test",125,85)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:draw_line).with(98,98,148,98)
    expect(graphics).to receive(:draw_line).with(98,98,98,68)
    expect(graphics).to receive(:draw_line).with(148,68,148,98)
    expect(graphics).to receive(:draw_line).with(148,68,98,68)
    button.draw(graphics)
  end

  it "draws the button" do
    graphics = double()
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:draw_line).with(200,200,300,200)
    expect(graphics).to receive(:draw_line).with(200,200,200,50)
    expect(graphics).to receive(:draw_line).with(300,50,300,200)
    expect(graphics).to receive(:draw_line).with(300,50,200,50)
    expect(graphics).to receive(:drawString).with("other",250,125)
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:draw_line).with(198,198,298,198)
    expect(graphics).to receive(:draw_line).with(198,198,198,48)
    expect(graphics).to receive(:draw_line).with(298,48,298,198)
    expect(graphics).to receive(:draw_line).with(298,48,198,48)
    button1.draw(graphics)
  end

  it "logs the button click" do
    expect(button.handle_click(120,110)).to eq(true)
  end

end
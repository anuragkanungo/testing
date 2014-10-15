#area on which geometrical shapes are drawn
class Gui::Canvas < JPanel
  include java.awt.event.MouseListener

  def initialize
    super
    @shapes = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.addMouseListener(self)
    @frame.add(self)
    @frame.validate
    @frame.repaint
  end

  def paintComponent(graphics)
    super(graphics)
    @shapes.each do |shape|
      shape.draw(graphics)
      graphics.setColor(Color.black)
    end
  end

  def add(shape)
    @shapes << shape
    @frame.repaint
  end


  def mouseClicked(event)
    @shapes.each do |shape|
      shape.handle_click(event.x,event.y) if shape.respond_to?(:handle_click)
    end
    @frame.repaint
  end

  def mouseEntered(javaEvent)  end
  def mouseExited(javaEvent) end
  def mousePressed(javaEvent) end
  def mouseReleased(javaEvent) end

end

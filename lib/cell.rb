class Cell
  attr_accessor :content

  def initialize
    @hit = false
    @content = "W"
  end

  def hit
    raise "Cell already hit" if hit?
    content.hit
    @hit = true
  end

  def hit?
    @hit
  end
end

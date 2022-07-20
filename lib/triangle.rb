class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def not_zero?
    self.side1 > 0 && self.side2 > 0 && self.side3 > 0
  end

  def side_length?
    (self.side1 + self.side2) > self.side3 && (self.side1 + self.side3) > self.side2 && (self.side2 + self.side3) > self.side1
  end

  def kind
    if(self.not_zero? && self.side_length?)
      if (@side1 == @side2 && @side2 == @side3)
        :equilateral
      elsif(@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end 

  class TriangleError < StandardError

  end
end

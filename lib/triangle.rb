require 'pry'

class Triangle
  attr_accessor :left, :right, :bottom

  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end

  def kind
    # binding.pry
    if left <= 0 || right <= 0 || bottom <= 0
      raise TriangleError
    elsif (left + right) <= bottom || (left + bottom) <= right || (right + bottom) <= left
      raise TriangleError
    elsif left == right && right == bottom      
      :equilateral
    elsif left == right || right == bottom || bottom == left
      :isosceles
    else
      :scalene
    end
  end
      
  class TriangleError < StandardError
    "Not a valid triangle"
  end

end

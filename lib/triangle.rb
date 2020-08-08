require 'pry'
class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if @x <= 0 && @y <= 0 && @z <= 0
      raise TriangleError
       
      elsif (@x + @y) < @z || (@side_2 + @side_3) < @side_1 || (@side_3 + @side_1) < @side_2
        raise TriangleError
        
      else
        
        if @side_1 == @side_2 && @side_2 == @side_3 
          :equilateral
        elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
          :isosceles
        elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
          :scalene
        end
      end
    end
  end
  
class TriangleError < StandardError
end
  
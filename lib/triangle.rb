require 'pry'
class Triangle
  
attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
        :isosceles
      elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
        :scalene
      else
        
      if self.triangle.size == false 
        raise TriangleError
       
        elsif (@side_1 + @side_2) < @side_3 || (@side_2 + @side_3) < @side_1 || (@side_3 + @side_1) < @side_2
        raise TriangleError
        end
      end
    end
  end
  
class TriangleError < StandardError
end
  
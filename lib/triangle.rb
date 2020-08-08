require 'pry'
class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    if @side_1 < 0 && @side_2 < 0 && @side_3 < 0
       raise TriangleError
       
    elsif sum(@side_1 + @side_2) < @side_3 || sum(@side_2 + @side_3) < @side_1 || sum(@side_3 + @side_1) < @side_2
      raise TriangleError
    end
     
      if @side_1 == @side_2 && @side_2 == @side_3 
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
        :isosceles
      elsif @side_1 != @side_2 && @side_2 != @@side_3 && @side_3 != @side_1
        :scalene
        
      end
    end
  end
  
  
    
  
equilateral = Triangle.new(2, 2, 2).kind
equilateral = Triangle.new(10,10,10).kind
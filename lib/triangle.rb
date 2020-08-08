require 'pry'
class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    binding.pry
     if x > 0 && y > 0 && y > 0
     sum(x + y) > z || sum(y + z) > x || sum(z + x) > y
     return true 
    
     #elsif equilateral.all.detect {|x| x = y && y = z && x = z|}
#       self.equilateral
  
#     elsif 
    
#     isosceles.all.detect {|x| x < y && x = z}
#       self.isosceles
      
#     elsif
#     scalene.all.detect {|x| x > y && y > z && x > z}
#     self.scalene
  end

 end
 
# if x < 0 && y < 0 && z < 0  
#     raise TriangleError
    
    
#   # class TriangleError < StandardError
#   #   side_1 = a > 0
#   #   side_2 = b > 0
#   #   side_3 = c > 0
    
#   #   if sum(a + b) > c || sum(b + c) > a || sum(a + c) > c ? true : false
      
      
    
    
  
equilateral = Triangle.new(2, 2, 2).kind
equilateral = Triangle.new(10,10,10).kind
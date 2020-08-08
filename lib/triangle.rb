require_relative '../lib/triangle'
class Triangle
  
attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(Triangle::TriangleError)
  end
  
  def kind
    if @side_1 <= 0 && @side_2 <= 0 && @side_3 <= 0 
      raise TriangleError
       
      elsif (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_3 + @side_1) <= @side_2
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
  
class TriangleError < StandardError
  end
end
  
class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c 
  end
  
  def kind
    valid
    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
  
  def valid
    triangles = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |s|
      triangles << false if s <= 0
    raise TraingleError if triangles.include?(false)
    end
  end
  
  class TraingleError < StandardError
    
  end
end

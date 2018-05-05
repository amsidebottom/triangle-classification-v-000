class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind

    if @length1=@length2 and @length2=@length3
      return equilateral
    elsif @length1=@length2 or @length2=@length3 or @length1=@length3
      return isosceles
    else
      return scalene
    
end

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    if @length1 <= 0 or @length2 <= 0 or @length3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif (@length1 + @length2 < @length3) or (@length2 + @length3 < @length1) or (@length1 + @length3 < @length2)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      if @length1==@length2 and @length2==@length3
        :equilateral
      elsif @length1==@length2 or @length2==@length3 or @length1==@length3
        :isosceles
      else
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "At least one triange side length is invalid. Please be sure all side lengths are greater than 0."
    end
  end
  
end

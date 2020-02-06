require "pry"

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    sides = [@s1, @s2, @s3]
    binding.pry
    if !(@s1 + @s2 > @s3) || sides.include?(0) || sides.all?(0) || sides.any? {|s| s < 0}
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif sides.all?(0)
    elsif @s1 == @s2 && @s1 == @s3
      :equilateral
    elsif @s1 == @s2 || @s2 ==  @s3 || @s1 == @s3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  
  end
  
  
end

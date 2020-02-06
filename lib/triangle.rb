class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    sides = [@s1, @s2, @s3]
    if !(@s1 + @s2 > @s3) || sides.include?(0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif
      
    end
  end
  
  class TriangleError < StandardError
  
  end
  
  
end

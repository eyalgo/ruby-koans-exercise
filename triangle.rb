# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
class TriangleValidator
  def validate(a,b,c)
    input = "(a=#{a}) , (b=#{b}) , (c=#{c})"
    if a <= 0 or b <= 0 or c <= 0
      raise TriangleError, "One of the lines is zero #{input}"
    end
    x, y, z = [a,b,c].sort
    if x+y <= z
      raise TriangleError, "Each 2 lines must be longer the third #{input}"
    end
  end
end

def triangle(a, b, c)
  validator = TriangleValidator.new
  validator.validate(a,b,c)
  if a == b and a == c
    return :equilateral
  elsif a == b or a == c or b == c
    return :isosceles
  end
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

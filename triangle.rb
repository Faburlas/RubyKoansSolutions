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
def triangle(a, b, c)
  sum = [a, b, c].reduce(:+)
  long_side = [a, b, c].max


  if [a,b,c].any? {|x| x <= 0}
    raise TriangleError
  elsif sum <= long_side * 2
    raise TriangleError
  end
  
  if ((a==b) and (a==c))
    return :equilateral
  end
  if (a==b) or (b==c) or (c==a)
    return :isosceles
  end
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

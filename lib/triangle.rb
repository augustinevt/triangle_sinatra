class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:kind) do
    if (@a + @b < @c) || (@b + @c < @a) || (@a + @c < @b)
      "not a triangle"
    elsif @a == @b && @b == @c
      "equilateral"
    elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
      "isosceles"
    elsif @a != @b && @b != @c
      "scalene"
    end
  end
end

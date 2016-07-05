class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end
  define_method(:is_triangle?) do
     @a + @b >= @c && @b + @c >= @a && @a + @c >= @b
  end
  define_method(:kind) do
    if @a == @b && @b == @c
      "equilateral"
    elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
      "isosceles"
    elsif @a != @b && @b != @c
      "scalene"
    else
      "not a triangle"
    end
  end
end

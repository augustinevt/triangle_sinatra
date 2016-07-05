class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end
  define_method(:is_triangle?) do
     @a + @b >= @c && @b + @c >= @a && @a + @c >= @b
  end
end

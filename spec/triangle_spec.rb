require('rspec')
require('triangle.rb')

describe ('Triangle') do

  describe('Triangle#kind') do
    it('return "equilateral" if triangle is equilateral') do
      new_triangle = Triangle.new(5,5,5)
      expect(new_triangle.kind()).to eq("equilateral")
    end
    it('returns "isosceles" if triangle is isosceles') do
      new_triangle = Triangle.new(5,5,7)
      expect(new_triangle.kind()).to eq('isosceles')
    end
    it('returns "scalene" if triangle is scalene') do
      new_triangle = Triangle.new(5,6,7)
      expect(new_triangle.kind()).to eq('scalene')
    end
    it('returns true if the triangle is a triangle') do
      new_triangle = Triangle.new(3, 4, 11)
      expect(new_triangle.kind()).to eq('not a triangle')
    end
  end


end

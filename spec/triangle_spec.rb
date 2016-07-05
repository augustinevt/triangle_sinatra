require('rspec')
require('triangle.rb')

describe ('Triangle') do

  describe('Triangle#is_triangle?') do
    it('returns false if the triangle is not a triangle') do
      new_triangle = Triangle.new(1, 2, 10)
      expect(new_triangle.is_triangle?()).to eq(false)
    end
    it('returns true if the triangle is a triangle') do
      new_triangle = Triangle.new(6, 7, 11)
      expect(new_triangle.is_triangle?()).to eq(true)
    end
  end

  describe('Triangle#kind') do
    it('return "equilateral" if triangle is equilateral') do
      new_triangle = Triangle.new(5,5,5)
      expect(new_triangle.kind()).to eq("equilateral")
    end
    it('returns "isosceles" if triangle is isosceles') do
      new_triangle = Triangle.new(5,5,7)
      expect(new_triangle.kind()).to eq('isosceles')
    end
  end


end

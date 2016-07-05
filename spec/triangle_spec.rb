require('rspec')
require('triangle.rb')

describe ('Triangle') do
  it('returns false if the triangle is not a triangle') do
    new_triangle = Triangle.new(1, 2, 10)
    expect(new_triangle.is_triangle?()).to eq(false)
  end
  it('returns true if the triangle is a triangle') do
    new_triangle = Triangle.new(6, 7, 11)
    expect(new_triangle.is_triangle?()).to eq(true)
  end
end

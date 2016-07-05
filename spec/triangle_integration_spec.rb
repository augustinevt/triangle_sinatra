require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('given all three measuerments of equal value should return "equilateral"') do
    visit('/')
    fill_in('side_a', :with => '5')
    fill_in('side_b', :with => '5')
    fill_in('side_c', :with => '5')
    click_button('Triangulate')
    expect(page).to have_content('equilateral')
  end
  it('given only two measurements of equal value should return "isosceles"') do
    visit('/')
    fill_in('side_a', :with => '6')
    fill_in('side_b', :with => '5')
    fill_in('side_c', :with => '5')
    click_button('Triangulate')
    expect(page).to have_content('isosceles')
  end
  it('given no measurements of equal value should return "scalene"') do
    visit('/')
    fill_in('side_a', :with => '6')
    fill_in('side_b', :with => '5')
    fill_in('side_c', :with => '7')
    click_button('Triangulate')
    expect(page).to have_content('scalene')
  end
  it('given impossible measurements for triangle should return "not a triangle"') do
    visit('/')
    fill_in('side_a', :with => '1')
    fill_in('side_b', :with => '5')
    fill_in('side_c', :with => '7')
    click_button('Triangulate')
    expect(page).to have_content('not a triangle')
  end
end

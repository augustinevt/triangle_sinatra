require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangulate') do
  @a = params.fetch('side_a')
  @b = params.fetch('side_b')
  @c = params.fetch('side_c')
  new_triangle = Triangle.new(@a,@b,@c)
  @result = new_triangle.kind()
  erb(:triangulate)
end

require "sinatra"

post '/login' do
  username = params[:username]
  password = params[:password]
end

put '/users/:id' do
  # assuming we can retrieve a user
  u = User.find(params[:id])
  u.first_name = params[:first_name]
  u.last_name = params[:last_name]
  u.save
end

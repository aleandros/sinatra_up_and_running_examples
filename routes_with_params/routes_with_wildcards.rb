require "sinatra"

# Anything passed in the wildcard position is stored in params[:splat]

get '/*' do
  "You passed in #{params[:splat]}"
end

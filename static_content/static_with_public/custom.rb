require "sinatra"

configure do
  set :public_folder, File.dirname(__FILE__) + '/custom_public'
end

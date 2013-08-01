require "sinatra/base"

general_app = Sinatra.new { enable :logging }
custom_app = Sinatra.new(general_app) do
  get('/') { 'Hello world' }
end

run custom_app

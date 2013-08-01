require "sinatra/base"

class MyApp < Sinatra::Base
  get '/' do
    "Hello from MyApp!"
  end
  run! if __FILE__ == $0
end

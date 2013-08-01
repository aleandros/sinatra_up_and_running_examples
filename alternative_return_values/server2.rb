require "sinatra"

get '/' do
  halt [418, "I'm a tea pot!"]
  "You'll never get here!"
end


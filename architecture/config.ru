require 'sinatra/base'

Dir.glob('./{helpers,controllers}/*.rb').each do |file| 
  puts file
  require file 
end

map('/example') { run ExampleController }
map('/') { run ApplicationController }

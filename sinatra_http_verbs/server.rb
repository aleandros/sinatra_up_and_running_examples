require "sinatra"

get '/' do
  'Triggered via GET'
end

post '/' do
  'Triggered via POST'
end

put '/' do
  'Triggered via PUT'
end

delete '/' do
  'Triggered via DELETE'
end

patch '/' do
  'Triggered via PATCH'
end

options '/' do
  'Triggered via options'
end



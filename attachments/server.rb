require "sinatra"

before do
  content_type :txt
end

get '/attachment' do
  attachment 'hello.txt'
  "Here's what will be sent downstream in an attachment called 'hello.txt'."
end


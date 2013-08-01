require 'sinatra'

get '/' do
  response.set_cookie 'foo', 'bar'
  # Note: cookie set path is relative to request URL.
  # But a more general URL can be explicitly stated as follows:
  # response.set_cookie "foo", :value => "bar", :path => '/'
  "Cookie set. Would you like to <a href='/read'>read it</a>?"
end

get '/read' do
  "Cookie has a value of: #{request.cookies['foo']}."
end

get '/delete' do
  response.delete_cookie "foo"
  'Cookie has been deleted'
end


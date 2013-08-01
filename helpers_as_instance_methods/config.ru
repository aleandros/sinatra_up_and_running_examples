require "sinatra/base"

class MyApplication < Sinatra::Base
  def time
    Time.now.to_s
  end

  get('/') { "It's #{time}\n" }
  run!
end

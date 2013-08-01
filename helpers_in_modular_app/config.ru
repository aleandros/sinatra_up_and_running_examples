require "sinatra/base"
require "date"

module MyHelpers
  def time
    Time.now.to_s
  end
end

class MyApplication < Sinatra::Base
  helpers MyHelpers

  helpers do
    def date
      Date.today.to_s
    end
  end

  get('/') { "It's #{time}\n" }
  get('/today') { "Today is #{date}\n" }

  run!
end

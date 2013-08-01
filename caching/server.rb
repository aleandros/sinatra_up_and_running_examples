require "sinatra"

before do
  content_type :txt
end

get '/' do
  headers 'Cache-Control' => 'public, mus-revalidate, max-age=3600',
          'Expires' => Time.at(Time.now.to_i + (60*60)).to_s
  "This page redendered at #{Time.now}."
end

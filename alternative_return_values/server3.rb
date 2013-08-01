require "sinatra"

before { halt 418, "I'm a tea pot!" }
get('/') { "You'll never get here!" }

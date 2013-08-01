require "sinatra/base"

Router = Sinatra.new

class ApplicationController < Sinatra::Base
  def self.inherited(sublass)
    super
    Router.use sublass
  end

  enable :logging
end

class ExampleController < ApplicationController
  get('/example') { "Example!" }
end

# works with dynamically generated applications too

Sinatra.new ApplicationController do
  get '/' do
    "See the <a href='/example'>example</a>."
  end
end

Router.run!

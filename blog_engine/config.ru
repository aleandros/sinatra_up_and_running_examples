$LOAD_PATH.unshift 'lib'

require 'rack/cache'
use Rack::Cache

require 'blog'
run Blog

# To run as a daemon:
# rackup -E production -D -s thin

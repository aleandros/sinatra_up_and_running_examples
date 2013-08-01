require "sinatra"

# this is a valid rack program
MyApp = proc { [200,  {'Contet-Type' => 'text/plain'}, ['ok']]}

# that you can run with sinatra
get('/', &MyApp)

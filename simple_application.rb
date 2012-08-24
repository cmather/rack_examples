require 'rack'

# Rack applications have a simple requirement:
# They must respond to a "call" method that takes one parameter: env.
# Then they must return an array that looks like this:
# [http_status_code, headers, body]
# the headers is a hash {} and the body should be anything that responds to "each"
SimpleApplication = lambda do |env|
  [200, {"Content-Type" => "text/html"}, ["Hello world!"]]
end

Rack::Handler::Thin.run SimpleApplication, Port: 3000

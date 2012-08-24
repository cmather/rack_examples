require 'rack'

class MyMiddleware
  def initialize app
    @app = app
  end

  def call env
    # You can modify the env hash here if you want then do @app.call to continue
    # calling up the middleware to app chain
    env["my_middleware_key"] = "some value"
    status, headers, body = @app.call(env)
    [status, headers, body]
  end
end

class Application
  def call env
    [200, { "Content-Type" => "text/html" }, [env.inspect]]
  end
end

# Rack::Builder let's us build up a composite application with middleware
# and our final application
app = Rack::Builder.new do |builder|
  # use adds some middleware
  builder.use MyMiddleware

  # run runs the final application
  builder.run Application.new
end

Rack::Handler::Thin.run app, Port: 3000



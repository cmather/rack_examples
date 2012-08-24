require 'rack'

class ClassApplication
  # Rack applications must respond to the call method and return an array
  # with 3 values: status_code, headers, body
  def call env
    [200, { "Content-Type" => "text/html" }, ["Class Application"]]
  end
end

# notice we're creating a new instance of ClassApplication
Rack::Handler::Thin.run ClassApplication.new, Port: 3000


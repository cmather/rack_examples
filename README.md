#What is Rack?
Rack provides a uniform way for applications to respond to http requests and add middleware that can modify the request and response. Understanding how Rack works will help you understand the process a Rails request goes through, and will allow you to create custom middleware that works with requests.

You can check out the source for Rack here:

https://github.com/rack/rack 

#Examples

Go through the examples in this order:

1. `simple_application.rb`: Demonstrates the Rack specification and how a simple Rack application works.

2. `class_application.rb`: Shows how a Rack application can be a class also.

3. `middleware.rb`: Shows how to stack on middleware and build a composite application using Rack::Builder

# List of Middleware

You can find a list of open source middleware for Rack applications here:

https://github.com/rack/rack/wiki/List-of-Middleware

# Rails Middleware

You can find a list of Rails custom middleware in the Rails GitHub repo:

https://github.com/rails/rails/tree/master/actionpack/lib/action_dispatch/middleware

# Helpful Resources

* http://railscasts.com/episodes/151-rack-middleware?autoplay=true
* http://railscasts.com/episodes/317-rack-app-from-scratch?view=asciicast
* http://railscasts.com/episodes/222-rack-in-rails-3?view=asciicast



#What is Rack?
Rack provides a uniform way for applications to respond to http requests and add middleware that can modify the request and response. Understanding how Rack works will help you understand the process a Rails request goes through, and will allow you to create custom middleware that works with requests.

You can check out the source for Rack here:

https://github.com/rack/rack 

#Examples

Go through the examples in this order:

1. `simple_application.rb`: Demonstrates the Rack specification and how a simple Rack application works.

2. `class_application.rb`: Shows how a Rack application can be a class also.

3. `middleware.rb`: Shows how to stack on middleware and build a composite application using Rack::Builder

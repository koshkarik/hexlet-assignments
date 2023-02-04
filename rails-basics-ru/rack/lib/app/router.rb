# frozen_string_literal: true

require 'rack'

class Router
  def call(env)
    # BEGIN
    case env['PATH_INFO']
    when '/'
      [200, { 'Content-Type': 'text/plain' }, ['Hello, World!']]
    when '/about'
      [200, { 'Content-Type': 'text/plain' }, ['About!']]
    else
      [404, { 'Content-Type': 'text/plain' }, ['Not found']]
    end
    # END
  end
end

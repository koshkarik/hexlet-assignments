# frozen_string_literal: true

require 'digest'

class Signature
  def initialize(app)
    @app = app
  end

  def call(env)
    # BEGIN
    status, headers, body = @app.call(env)
    return [status, headers, body] if status != 200

    hash = Digest::SHA256.hexdigest(body.join)
    new_body = ["#{body.join}\n#{hash}"]
    [status, headers, new_body]
    # END
  end
end

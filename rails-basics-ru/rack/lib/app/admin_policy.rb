# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    case env['PATH_INFO']
    when '/admin'
      [403, {}, '']
    else
      @app.call env
    end
  end
end

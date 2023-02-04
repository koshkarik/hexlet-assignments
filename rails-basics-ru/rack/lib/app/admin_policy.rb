# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    # BEGIN
    case env['PATH_INFO']
    when '/admin'
      [403, {}, '']
    else
      @app.call env
    # END
    end
  end
end

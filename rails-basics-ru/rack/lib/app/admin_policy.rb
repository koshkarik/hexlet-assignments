# frozen_string_literal: true

class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    path = env['PATH_INFO']
    if path =~ %r{\A/admin}
      [403, { 'Content-Type' => 'text/plain' }, []]
    else
      @app.call env
    end
  end
end

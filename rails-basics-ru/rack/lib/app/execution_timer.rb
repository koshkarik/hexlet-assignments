# frozen_string_literal: true

class ExecutionTimer
  def initialize(app)
    @app = app
  end

  def call(env)
    start = Time.now
    status, headers, body = @app.call(env)
    stop = Time.now
    headers['X-Processing-Time'] = (stop - start).to_s
    puts headers['X-Processing-Time']
    [status, headers, body]
  end
end

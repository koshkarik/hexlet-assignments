# frozen_string_literal: true

require 'uri'
require 'forwardable'

# BEGIN
class Url
  extend Forwardable
  include Comparable

  attr_accessor :url

  def_delegators :@uri_service, :scheme, :host

  def initialize(current_url)
    @uri_service = URI(current_url)
    @url = current_url
    @params = nil
  end

  def ==(other)
    @url == other.url
  end

  def query_params
    return @params if @params

    string_params = @uri_service.query

    return @params unless string_params

    result = []

    string_params.split('&').each do |item|
      result << item.split('=')
    end
    @params = Hash[result].transform_keys(&:to_sym)
  end

  def query_param(key, default = nil)
    cur_params = query_params
    return default unless query_params[key]

    cur_params[key]
  end
end
# END

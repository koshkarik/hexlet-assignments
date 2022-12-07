# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  result = []
  sorted_keys = params.keys.sort
  sorted_keys.each do |key|
    result.push "#{key}=#{params[key]}"
  end
  result.join('&')
end
# END
# rubocop:enable Style/For

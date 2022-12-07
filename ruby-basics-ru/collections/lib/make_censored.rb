# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  words = text.split
  prepared_words = words.map do |word|
    stop_words.include?(word) ? '$#%!' : word
  end
  prepared_words.join ' '
  # END
end

# rubocop:enable Style/For

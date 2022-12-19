# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, anagrams)
  def do_hash(w)
    word_hash = {}
    w.chars do |letter|
      word_hash[letter] = 0 unless word_hash[letter]
      word_hash[letter] += 1
    end
    word_hash
  end

  expected = do_hash(word)
  anagrams.filter do |cur_word|
    expected == do_hash(cur_word)
  end
end
# END

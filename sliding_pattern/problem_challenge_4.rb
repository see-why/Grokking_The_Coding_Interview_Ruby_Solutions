# frozen_string_literal: true

def words_concatenation(str, words)
  starting_indices = []
  word_map = word_character_frequencies words
  word_length = words[0].size

  (0..(str.size - (word_map.size * word_length))).each do |i|
    words_seen = {}
    (0..word_map.size).each do |j|
      next_word_index = i + j * word_length
      word = str[next_word_index..(next_word_index + word_length - 1)]
      break unless word_map.key? word

      words_seen[word] = 0 unless words_seen.key? word
      words_seen[word] += 1

      break if words_seen[word] > word_map[word]

      starting_indices << i if (j + 1) == word_map.size
    end
  end
  starting_indices
end

def word_character_frequencies(words)
  word_map = {}
  words.each do |char|
    word_map[char] = 0 unless word_map.key? char
    word_map[char] += 1
  end
  word_map
end

pp words_concatenation 'catfoxcat', %w[cat fox]
pp words_concatenation 'catcatfoxfox', %w[cat fox]

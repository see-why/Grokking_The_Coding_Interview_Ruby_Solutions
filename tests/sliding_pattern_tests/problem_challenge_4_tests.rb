# frozen_string_literal: true

require_relative '../../sliding_pattern/problem_challenge_4'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_words_concatenation
    assert_equal([0, 3], words_concatenation('catfoxcat', %w[cat fox]))
    assert_equal([3], words_concatenation('catcatfoxfox', %w[cat fox]))
  end
end

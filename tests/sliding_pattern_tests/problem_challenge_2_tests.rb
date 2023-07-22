# frozen_string_literal: true

require_relative '../../sliding_pattern/problem_challenge_2'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_string_anagrams
    assert_equal([1, 2], string_anagrams('ppqp', 'pq'))
    assert_equal([2, 3, 4], string_anagrams('abbcabc', 'abc'))
  end

  def test_string_anagrams_with_hash
    assert_equal([1, 2], string_anagrams_with_hash('ppqp', 'pq'))
    assert_equal([2, 3, 4], string_anagrams_with_hash('abbcabc', 'abc'))
  end
end

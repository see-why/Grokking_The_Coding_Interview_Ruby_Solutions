# frozen_string_literal: true

# Given that A, D, and Z are numbers > 0, such that A < D < Z, consider the following:
#
# Super Mario is standing at point A and needs to reach point Z. He can only take step D at a time.
# Write a function leastNumOfSteps(A, D, Z) that returns the minimum number of steps he must take
# to reach or cross his destination.
#
# For example:
# if A = 15, D = 40, and Z = 120, the minimum num of steps Mario needs to take would be:
#
# 15 + 40 + 40 + 40 = 135 (3 steps)

def least_num_of_steps(point_a, steps, point_b)
  ((point_b - point_a) / steps.to_f).round(0)
end

# Write a function that given an array of integers returns the smallest positive integer,
# greater than 0, that does not exist in the array.
#
# Examples:
# array = [1,2,3,4,5,6], should return 7
#
# array = [-1,-4,-3], should return 1
#
# array = [ 2, 1, 6, 4, 3, 7, 11, -77], should return 5

def smallest_positive_integer(arr)
  num_hash = {}

  arr.each do |item|
    num_hash[item] = 1 if item >= 1
  end

  (1..arr.size + 1).each do |i|
    return i unless num_hash.key? i
  end

  1
end

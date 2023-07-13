# frozen_string_literal: true

# Fruit=['A', 'B', 'C', 'A', 'C']

def fruits_into_basket fruits
  window_start = maximum_num_of_fruits = 0
  basket = {}
  fruits.each_with_index do |fruit, window_end|
    basket[fruit] = 0 unless basket.key? fruit
    basket[fruit] += 1
    next unless basket.keys.size >= 2

    while basket.keys.size > 2
      starting_fruit = fruits[window_start]
      basket[starting_fruit] -= 1 if basket.key? starting_fruit
      basket.delete(starting_fruit) if basket[starting_fruit].zero?
      window_start += 1
    end

    maximum_num_of_fruits = [maximum_num_of_fruits, window_end - window_start + 1].max
  end
  maximum_num_of_fruits
end

pp fruits_into_basket %w[A B C A C] # 3
pp fruits_into_basket %w[A B C B B C] # 5

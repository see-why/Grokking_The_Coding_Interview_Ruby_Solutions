# frozen_string_literal: true

def happy_number(num)
  slow = num
  fast = product_of_sum_of_digits(product_of_sum_of_digits(num))

  while slow != fast
    slow = product_of_sum_of_digits(slow)
    fast = product_of_sum_of_digits(product_of_sum_of_digits(fast))

    return true if slow == 1 || fast == 1
  end

  false
end

def product_of_sum_of_digits(num)
  str_num = num.to_s
  sum = 0
  str_num.each_char do |char|
    sum += char.to_i**2
  end
  sum
end

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
  sum = 0
  while num.positive?
    digit = num % 10
    sum += digit**2
    num = (num / 10.0).floor
  end
  sum
end

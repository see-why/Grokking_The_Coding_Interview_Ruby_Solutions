# frozen_string_literal: true

def happy_number(num)
  slow = num
  fast = sum_of_product_digits(sum_of_product_digits(num))

  while slow != fast
    slow = sum_of_product_digits(slow)
    fast = sum_of_product_digits(sum_of_product_digits(fast))

    return true if slow == 1 || fast == 1
  end

  false
end

def sum_of_product_digits(num)
  sum = 0
  while num.positive?
    digit = num % 10
    sum += digit**2
    num = (num / 10.0).floor
  end
  sum
end

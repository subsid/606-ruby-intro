# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  seen = {}
  arr.each do |e|
    if seen.has_key? n - e
      return true
    else
      seen[e] = true
    end
  end  
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  !s.empty? and s.downcase.match(/^[aeiou|\W]/).nil?
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  n = s.to_i(2)
  if n != 0 and n % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    '$%0.2f' % @price
  end
end

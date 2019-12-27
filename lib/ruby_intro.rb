# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  if arr.length == 0
      0
  else
    arr.max(2).sum
  end
end

def sum_to_n? arr, n
  elems = {}
  arr.each do |x|
    if elems.has_key? n - x
      return true
    else
      elems[x] = 0
    end
  end
  false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  /^(?=[[:alpha:]])[^aeiou]/i.match? s
end

def binary_multiple_of_4? s
  /^([01\s]*0)?0$/.match? s
end

# Part 3

class BookInStock
  attr_reader :isbn
  attr_reader :price

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def isbn=(value)
    raise ArgumentError.new('ISBN should not be empty') if value.empty?
    @isbn = value
  end

  def price=(value)
    raise ArgumentError.new('price should be positive') if value <= 0
    @price = value
  end

  def price_as_string
    '$%.2f' % [self.price]
  end
end

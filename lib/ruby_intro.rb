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
  "Hello, " + name
end

def starts_with_consonant? s
  /^(?=[[:alpha:]])[^aeiou]/i.match? s
end

def binary_multiple_of_4? s
  /^([01\s]*0)?0$/.match? s
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

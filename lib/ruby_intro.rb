# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
 arr.inject(0, :+)
 
end

def max_2_sum arr
  # YOUR CODE HERE
  # Pop - Removes the last element from self and returns it, or nil if the array is empty.
  sum(arr.sort.pop(2)) || 0
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n
  return false if arr.nil? or arr.empty? or arr.length == 1
  arr.each do |first|
    arr.each do |second|
      return true if (first + second == n) and first != second
    end
  end
  false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # consonant and false otherwise
  return s =~ /\A[qwrtypsdfghjklzxcvbnm]{1}/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
   return false if s.empty?
  return true if (s.length == 1 && s == "0")
  return (s =~ /00\z/ && s =~ /\A[0|1]{3,}\z/) 
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

 attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % price
  end
end

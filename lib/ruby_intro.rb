# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  result=0
  unless arr.empty? 
    arr.each do |element| 
      result += element
    end
  end
  #result.to_i
  return result
end

def max_2_sum(arr)
  # YOUR CODE HERE
  max2sum = []
   unless arr.empty?
    size = arr.length
    size = 2 if size > 2
    max2sum = arr.max(size)
   end
   return sum(max2sum)
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  s= s.downcase
  return /^[^aeiouAEIOU\W[0-9]]/i.match(s) != nil
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s !~ /[^01]/ && (s.to_s.split(//).last(2).join == '00' || s == '0')
    return true

  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader :isbn, :price
attr_writer :isbn, :price
def initialize(isbn,price)
  @isbn = isbn.to_s
  @price = price.to_f
  raise ArgumentError.new("ISBN is empty") if @isbn == ''
  raise ArgumentError.new("Price must be higher than 0")  if  @price <=0.0 
end
def price_as_string
  pricestring = "$%0.2f" %[price]
  return pricestring.to_s
end
end


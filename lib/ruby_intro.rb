# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for x in arr
    sum += x
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  res = 0;
  return res if arr.length() == 0
  return arr[0] if arr.length() == 1
  arr = arr.sort
  res = arr[arr.length() - 1] + arr[arr.length() - 2]
  res
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  # check if there is n - arr[i]
  # return false if (arr.length() <= 1) 
  # for i in 0...arr.length() - 1
  #   for j in i + 1...arr.length()
  #     return true if (arr[i] + arr[j] == n)
  #   end
  # end
  # false
  return false if (arr.length() <= 1)  
  h = {}
  arr.each_with_index do |x| 
    if h[n - x] 
      return true
    end
    h[x] = 1
  end
  false;
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.length() == 0
  if s.match(/[^a-zA-Z]/)
    return false
  end
  not s.match(/^[aeiouAEIOU]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length() == 0 
  val = 0
  for x in s.split("")
    val = val * 2
    if x == '1'
      val += 1
    elsif x == '0'
      next
    else 
      return false;
    end
  end
  val % 4 == 0
end


# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise(ArgumentError) if (isbn.length() == 0 or price <= 0)
    @isbn = isbn
    @price = price
    
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    raise_error(ArgumentError) if isbn.length() == 0 
    @isbn= isbn
  end

  def price=(price)
    raise_error(ArgumentError) if price <= 0

    @price= price
  end

  def price_as_string
    format("$%0.2f",@price)
  end
  
end

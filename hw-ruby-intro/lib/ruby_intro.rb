# When done, submit this entire file to the autograder.
# Cole Bui 425003491
# Part 1

def sum arr
  sum=0
  for x in arr
    sum+=x
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  max1 = arr[0]
  max2 = arr[1]
  arr.drop(2).each do |x|
    if x > max1
      max2 = max1
      max1 = x
    elsif x > max2
      max2 = x
    end
  end
  return max1 + max2
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  arr.each_with_index do |x, index|
    arr.drop(index).each_with_index do |y, index2|
      if (x + y) == n and index != index2+index
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  consonants = "bcdfghjklmnpqrstvwxyz"
  firstChar = s[0].downcase
  chars = consonants.split("")
  chars.each do |x|
    if (x == firstChar)
      return true
    end
  end
  return false
  
  
end

def binary_multiple_of_4? s
  myString = s.to_s

  if myString.length ==0
    return false
  end

  if myString[myString.length-1] == "1"
    return false
  end
  splitStr = myString.split("")
  splitStr.each do |x|
    if x.to_s != "1"
      if x.to_s != "0"
        return false
      end
    end
  end
  return true
end

# Part 3

class BookInStock

  def initialize(isbn_, price_)
    raise ArgumentError, 'price is less than or equal to 0' unless price_ > 0
    raise ArgumentError, 'isbn is not string' unless isbn_.is_a? String and isbn_.length > 0
    @isbn = isbn_
    @price = price_
  end
  
  #isbn getter
  def isbn
    @isbn
  end
  
  #isbn setter
  def isbn=(isbn_)
    @isbn = isbn_
  end
  
  #price getter
  def price
    @price
  end
  
  #price setter
  def price=(price_)
    @price = price_
  end
    
  def price_as_string
    priceString = '%.2f' % @price

    return "$" + priceString
  end
  
end


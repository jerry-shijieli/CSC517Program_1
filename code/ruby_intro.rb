# Part 1

def unique_total a
  # ADD YOUR CODE HERE
  # takes an array of integers as an argument and then returns the
  # sum of unique elements in the array. The sum of an empty array is zero.
  if a.empty?
    return 0
  else
    return a.uniq.inject(0, :+) # sum
  end
end

def highest_frequency a
  # ADD YOUR CODE HERE
  # # which takes an array of integers as an argument and
  # returns the element with highest frequency. If there is a tie, return the smallest
  # element. For empty array, return -1.
  if a.empty?
    return -1
  else
    counts = Hash.new(0)
    a.each {|num| counts[num] += 1}
    freq = counts.sort_by {|key, val| key}.to_h
    max_count = freq.values.max
    return freq.key(max_count)
  end
end

def check_sum? a, n
  # ADD YOUR CODE HERE
  # that takes an array of integers and an additional integer, n, as arguments
  # and returns true if any two elements in the array of integers sum
  # to n. checkSum?([], n) should return false for any value of n, by definition.
  if a.empty?
    return false
  else
    pairs = a.combination(2).to_a
    return pairs.any? {|pair| pair.inject(0,:+)==n}
  end
end

# Part 2

def custom_concat s
  # ADD YOUR CODE HERE
  # takes a string as an argument and returns the string
  # "Welcome, " concatenated at the beginning of the input string.

end

def initial_consonant? s
  # ADD YOUR CODE HERE
  # takes a string as an argument and returns a boolean
  # value. It is true if it starts with a consonant and false otherwise. (Any character
  # other than a vowel is a consonant) This method should work for both uppercase
  # and lowercase strings. Return false if string is empty or null.

end

def divisible_by_n? n,s
  # ADD YOUR CODE HERE
  # takes a string as an argument and returns a boolean
  # value. It is true if the string represents a binary number that is exactly divisible by
  # ‘n’ and false otherwise. It should return false even if the argument is not a valid
  # binary number.

end

# Part 3

class Car
  # ADD YOUR CODE HERE
  attr_accessor :model_number, :price
  def initialize(model_number, price)
    if model_number.empty?
      raise ArgumentError("model_number is an empty string!")
    elsif price<=0
      raise ArgumentError("Price is less than or equal to zero!")
    end
    @model_number = model_number
    @price = price
  end
  def formatted_price
    dollars = price.floor
    cents = ((price - dollars)*100).round
    dstr = dollars==0? "" : (dollars==1? "1 dollar" : "#{dollars} dollars") # output string for dollars
    cstr = cents==0? " only" : (cents==1? "1 cent only" : "#{cents} cents only") # output string for cents
    if dollars==0
      return cstr
    elsif cents==0
      return dstr+cstr
    else
      return dstr+" and "+cstr
    end
  end
end

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
   arr_value=arr.count
  
  if arr_value==0 
    return 0
  elsif arr_value==1
    return arr[0]
  else
    arr.sort!
    #arr.sort! {|a,b| a<=>b}
    return (arr[-1]+arr[-2])
  end
end

def sum_to_n? arr, n
  arr_value=arr.count
  if arr_value==0 
    return false
  elsif arr_value==1
    return false
  else
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  
  
  #if /^[^aeiou\W]/i.match(s)== nil
    #return false
  #else
   # return true
  
  #end
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  if s == "0"
    return true
   else
    /^[10]*00$/.match(s) != nil
  end
  
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
      def initialize(isbn,price)
        @isbn= isbn
        @price=price
        raise ArgumentError,
              "Enter the correct values for arguements" if isbn.empty? or price<=0
      end
      def price_as_string
        #number_to_currency(@price)
        return "$#{'%0.2f' % @price}"
      end 
end

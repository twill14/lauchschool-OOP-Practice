Exercieses



def repeat(string, num)
 num.times do |x|
  puts string
 end
end

repeat("Hello", 5)



Write a method that takes one argument in the form of an integer or a float; this argument may be either positive or negative. 
This method should check if a number is odd, returning true if its absolute value is odd. 
Floats should only return true if the number is equal to its integer part and the integer is odd.

Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) # => true


def is_odd?(num)
 array = num.to_s.split('.')
 return false if array[1].to_i > 0 
 return true if num.abs % 2 != 0
 false
end


p is_odd?(-7.0)

How do we know if a float is equal to its integer part? 7.0, 7.2 


Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]


def digit_list(num)
  num.to_s.split('').map {|x| x.to_i}
end


p digit_list(12345)



vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

def count_occurrences(array)
 hash = {}
   array.each do |item|
     if hash.has_key?(item)
       hash[item] += 1
      else
       hash[item] = 1
      end
   end
 hash
end

puts count_occurrences(vehicles)

Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse(array)
  
end

def reverse_sentence(string)
  string.split(' ').reverse
end

p reverse_sentence('Hello World')


Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. 
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
 new_string = string.split(' ').each do |item|
  item.reverse! if item.size > 4
 end
 new_string.join(' ')
end


p reverse_words('Walk around the block') 


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
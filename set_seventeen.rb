# def star(size)
#  space = (((size - 1) / 2) - 1)
#  while space >= 0
#    stars = '*' + ' ' * space + '*' + ' ' * space + '*'
#    puts stars.center(size)
#    space -= 1
#  end
#  middle = '*' * size
#  puts middle
#  space = 0
#  while space <= (((size - 1) / 2) - 1)
#    stars = '*' + ' ' * space + '*' + ' ' * space + '*'
#    puts stars.center(size)
#    space += 1
#  end
# end 




# star(9)






# def isprime?(num)
#  # prime number is divisible by only 1 and itself
#  return false if num == 1
 
#   (2...num ).to_a.each do |x|
#    return false if num % x == 0 
#   end
#   true
# end
 
# p isprime?(7)


# def select_primes(arr)
#  arr.select {|x| isprime?(x)}.size
# end

# p select_primes([1,2,3,4])

# def interlace(arr1, arr2)
#   new_array = []
#   index = 0
#   while index <= arr1.size - 1
#     new_array << arr1[index]
#     new_array << arr2[index]
#     index += 1
#   end
#   new_array
# end


# p interlace([1,2,3], ['a','b','c'])



# Write a method that takes a single String argument and returns a new string that contains the original value of the argument, but the first letter of every word is now capitalized.

# You may assume that words are any sequence of non-blank characters, and that only the first character of each word must be considered.

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# take string convert to array
#
# def word_cap(string)
#   array = string.split(' ').map do |word|
#     word = word.chars
#     new_first = word[0].capitalize
#     word.shift
#     word.unshift(new_first)
#     word.join
#   end
#   array.join(' ')
# end

# p word_cap('four score and seven') 
# p word_cap('the javaScript language')
# p word_cap('this is a "quoted" word')

# require "date"

# def friday13th?(year)
#  x = 1
#  count = 0
#  while x <= 12
#   count += 1 if Date.new(year,x,13).friday?
#    x += 1
#  end
#  return count
# end

# p friday13th?(2015)

# PRODUCTS = [
#   { name: "Thinkpad x210", price: 220 },
#   { name: "Thinkpad x220", price: 250 },
#   { name: "Thinkpad x250", price: 979 },
#   { name: "Thinkpad x230", price: 300 },
#   { name: "Thinkpad x230", price: 330 },
#   { name: "Thinkpad x230", price: 350 },
#   { name: "Thinkpad x240", price: 700 },
#   { name: "Macbook Leopard", price: 300 },
#   { name: "Macbook Air", price: 700 },
#   { name: "Macbook Pro", price: 600 },
#   { name: "Macbook", price: 1449 },
#   { name: "Dell Latitude", price: 200 },
#   { name: "Dell Latitude", price: 650 },
#   { name: "Dell Inspiron", price: 300 },
#   { name: "Dell Inspiron", price: 450 },
# ]

# query = {
#   price_min: 240,
#   price_max: 280,
#   q: "thinkpad"
# }

# query2 = {
#   price_min: 300,
#   price_max: 450,
#   q: "dell"
# }

# def search(query)
#  max_range = (query[:price_min]..query[:price_max]).to_a
#  name_req =  query[:q]
#   PRODUCTS.select {|item| max_range.include?(item[:price]) && item[:name].split(' ')[0].downcase == name_req}
# end

# p search(query)
# # => [ { name: "Thinkpad x220", price: 250 }]
# p search(query2)
# # # => [ { name: "Dell Inspiron", price: 300 }, { name: "Dell Inspiron", price: 450 }]

# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, 
# print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

# fizzbuzz(1, 15)


# def fizzbuzz(num1, num2)
#  new_array = []
#  (num1..num2).to_a.each do |num|
#     if num % 5 == 0 && num % 3 == 0
#      new_array << "Fizzbuzz"
#     elsif num % 3 == 0 
#      new_array << "Fizz"
#     elsif num % 5 == 0 
#      new_array << "Buzz"
#     else 
#      new_array << num
#     end
#  end
#   new_array.join(', ')
# end

# p fizzbuzz(1, 15)

# VARIABLE = 2

# if VARIABLE == 0 
#  puts "Play Rock Paper Scissors"
# elsif VARIABLE == 1
#   puts "Play Tic Tac Toe"
# else
#  puts "Choose which one to play"
#  puts "Press 1 For Rock paper scissors, or press 2 "
#  if rock 
#   puts "Play Rock Paper Scissors"
#  else
#   puts "Play Tic Tac Toe"
#  end
# end
  
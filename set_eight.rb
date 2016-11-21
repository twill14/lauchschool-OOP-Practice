# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# def word_sizes(string)
#  hash = {}
#  string.split(' ').each do |x|
#   key = x.length
#   if hash.has_key?(key)
#     hash[key] += 1
#   else
#     hash[key] = 1
#   end
#  end
#  hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}




# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. 
# For instance, the length of "it's" is 3, not 4.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# def sentence_cleaner(string) # 'Whats up doc'
#   new_array = []
#   string_array = string.split(' ')
#   index = 0
#   while index <= string_array.size - 1
#     word = string_array[index].gsub(/[\W]/, ' ')
#     word = word.delete ' '
#     new_array << word
#     index += 1
#   end
# # iterate through each item. gsub all non word symbols and replace with ' '. Then delete the ' ' inside each iterated string. Take new words and load into new array
#   new_array.join(' ')
# end

# def word_sizes(string)
#  hash = {}
#  sentence_cleaner(string).split(' ').each do |x|
#   key = x.length
#   if hash.has_key?(key)
#     hash[key] += 1
#   else
#     hash[key] = 1
#   end
#  end
#  hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}


# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the 
# English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
# sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# NUMBERS = {
#  0 => 'zero', 
#  1 => 'one',
#  2 => 'two',
#  3 => 'three',
#  4 => 'four',
#  5 => 'five',
#  6 => 'six',
#  7 => 'seven',
#  8 => 'eight',
#  9 => 'nine',
#  10 => 'ten',
#  11 => 'eleven',
#  12 => 'twelve',
#  13 => 'thirteen',
#  14 => 'fourteen',
#  15 => 'fifteen',
#  16 => 'sixteen',
#  17 => 'seventeen',
#  18 => 'eighteen',
#  19 => 'nineteen'
 
# }

# # Take key from hash in array and convert to value. Extract value to new array

# def alphabetic_number_sort(array)
#  new_array = []
#  array.each_with_index do |item, index|
#    new_array << NUMBERS[index]
#  end
#  new_array = new_array.sort
#  new_array.map {|x| NUMBERS.key(x)}
# end


# p alphabetic_number_sort((0..19).to_a)



# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''


# def crunch(string)
#  new_array = []
#  array = string.chars
#  array.each_with_index do |item, index|
#   new_array << item if item != array[index + 1] 
#  end
#  new_array.join
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''


# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+


# def print_in_box(string)
#  array = string.chars
#  # for every element in array, we want to append "--" to border and "  " to space
#  index = 0
#  border = ""
#  space = ""
#  while index <= array.size - 1
#    border += "-"
#    space += " "
#    index += 1
#  end
 
#  puts "+--#{border}+" 
#  puts "|#{space}  |"
#  puts "| #{string} |"
#  puts "|#{space}  |"
#  puts "+--#{border}+"
# end 

# print_in_box('Oh gosh, this kind of took awhile!')

# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

# Examples:

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

#require 'pry'

# def sum_of_sums(arr)
#  index = 1
#  value = arr[0]
#  while index <= arr.size - 1
#  value += arr[(0..index)].reduce(:+)
#   # binding.pry
#  index += 1
#  end
#  value
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

# Examples:

# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def substrings_at_start(string)
#  new_array = []
#  string_array = string.chars
#  index = 1
#  new_array << string_array[0]
#  while index <= string_array.size - 1
#    new_array << string_array[(0..index)].join
#    index += 1
#  end
#  new_array
# end

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

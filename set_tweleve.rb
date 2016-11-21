# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that 
# contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
# that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


# def multiply_all_pairs(arr1, arr2)
#  new_array = []
#   arr1_index = 0
#   arr2_index = 0
#   while arr1_index <= arr1.size - 1
#     while arr2_index <= arr2.size - 1
#       new_array << arr1[arr1_index] * arr2[arr2_index]
#       arr2_index += 1
#     end
#   arr1_index += 1
#   arr2_index = 0
#   end
#   new_array.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2])


# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Examples:

# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# def penultimate(string)
#   string = string.split(' ')
#   string[-2]
# end

# p penultimate('last word')

# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, 
# when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, 
# and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

# Example:

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.


# def greetings(arr, hash)
#  name = arr.join(' ')
#  puts "Hello #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end


# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# Examples:

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10


# def twice(num)
#  arr1 = []
#  arr2 = []
#  array = num.to_s.chars
#  return num * 2 if array.size == 1
#  arr1 <<  array[(0..array.size/2 - 1)]
#  arr2 << array[((array.size/2)..array.size)]
#  if arr1 == arr2
#   num
#  else
#   num * 2
#  end
# end


# p twice(103103)

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10


# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. 
# If the number is 0 or negative, return the original number.

# Examples;

# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# def negative(num)
#  array = num.to_s.chars
#  if array[0] == 0
#   0
#  elsif array[0] == '-'
#   num
#  else
#   -num
#  end
 
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0 

# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:

# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# def sequence(num)
#  min = 1
#  max = num
#  (min..max).to_a
# end

# p sequence(1)

# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

# Examples:

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true


# def uppercase?(string)
#  new_string = string.gsub(/[\W\d]/, '')
#  new_string.chars.each do |char|
#   return false if char =~ /[a-z]/ 
#  end
#  true
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

# Examples

# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# def word_lengths(string)
#  string.split(' ').map {|x| x + " " + x.length.to_s}
# end


# p word_lengths("cow sheep chicken")
# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Examples

# swap_name('Joe Roberts') == 'Roberts, Joe'


# def swap_name(string)
#  array = string.split(' ')
#  "#{array[1]}, #{array[0]}"
# end


# p swap_name('Joe Roberts')

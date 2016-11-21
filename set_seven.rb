# Write a method that computes the sum of all numbers between 1 and some other number that are a multiple of 3 or 5. For instance, 
# if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# def multisum(num)
#  array = (3..num).to_a.select {|x| x % 3 == 0 || x % 5 == 0}
#  array.reduce(:+)
# end

# p multisum(10)

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168


# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []


# def running_total(array)
#   new_array = []
#   index = 0
#   value = 0
#   while index <= array.size - 1
#     new_array << (array[index] + value)
#     value += array[index] 
#     index += 1
#   end
#   new_array
# end

# p running_total([2, 5, 13])

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []


# The String #to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
# String#to_int and Integer behave similarly. In this exercise, you are going to create your own conversion method.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String

# #to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# NUMBERS = {
# '0' => 0,
# '1' => 1,
# '2' => 2,
# '3' => 3,
# '4' => 4,
# '5' => 5,
# '6' => 6,
# '7' => 7,
# '8' => 8,
# '9' => 9
# }

# def string_to_integer(string)
#  digits = string.split('').map {|x| NUMBERS[x]}
#  value = 1
#  index = digits.size - 1
#  total = 0
#  while index >= 0
#    total += digits[index] * value
#    value *= 10
#    index -= 1
#  end
#  total
# end

# p string_to_integer('4321')


# In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
# You may, however, use the string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100


# def string_to_signed_integer(string)
#  array = string.split('')
#  sign = array.first
#  if sign == '-'
#   array.shift
#   string = array.join
#   -string_to_integer(string)
#  elsif sign == '+'
#   array.shift
#   string = array.join
#   string_to_integer(string)
#  else
#   string_to_integer(string)
#  end
# end

#  p string_to_signed_integer('4321')
#  p string_to_signed_integer('-570')
#  p string_to_signed_integer('+100')


# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), 
# Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# require "pry"

# NUMBERS = {
#  0 => '0',
#  1 => '1',
#  2 => '2',
#  3 => '3',
#  4 => '4',
#  5 => '5',
#  6 => '6',
#  7 => '7',
#  8 => '8',
#  9 => '9'
# }


# def integer_to_string(num)
#  new_array = []
#  base, remainder = num.divmod(10)
#  new_array << remainder
#  num = base
#  while base != 0
#    base, remainder = num.divmod(10)
#    new_array << remainder
#    num = base
#  end
#  new_array.reverse.join
# end

# p integer_to_string(4321)
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

# In the previous exercise, you developed a method that converts non-negative numbers to strings. 
# In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
# You may, however, use integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'



# def signed_integer_to_string(num)
#  if num == 0
#   '0'
#  elsif num < 0 
#  "-" + integer_to_string(num.abs)
#  else
#  "+" + integer_to_string(num)
#  end
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0


# def ascii_value(string)
#  value = 0
#  string.chars.each do  |char|
#   value += char.ord
#  end
#  value
# end

# p ascii_value('Four score')

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# MIN_PER_HOUR = 60

# HOUR_PER_DAY = 24

# MIN_PER_DAY = HOUR_PER_DAY * MIN_PER_HOUR 

# def time_of_day(num)
#  num = num % MIN_PER_DAY
#  hours, min = num.divmod(60)
#  format("%02d:%02d", hours, min)
# end

# p time_of_day(121)

# def after_midnight(string)
#  array = string.split(':')
#  if array[0] == '24'
#    0
#  else
#    total = ((array[0].to_i * 60) + array[1].to_i)
#  end
# end

# def before_midnight(string)
#  -after_midnight(string) % 1440
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0

# p before_midnight('23:59') 

# p after_midnight('23:59') 


# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end


# p before_midnight('13:34')


# Given a string of words separated by spaces, write a method that takes this string of words and returns a string 
# in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# def switch(string)
#  string[0], string[-1] = string[-1], string[0]
#  string
# end


# def swap(string)
#   string.split(' ').map {|word| switch(word)}.join(' ') 
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'



# Given a string that consists of some words and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result 
# (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# def cleanup(string)
#  string.gsub(/[\W]/,' ').squeeze
# end

#  p cleanup("---what's my +*& line?")
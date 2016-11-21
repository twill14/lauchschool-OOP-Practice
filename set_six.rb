# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# def oddities(array)
#  new_array = []
#  index = 0
#  while index <= array.size - 1
#    new_array << array[index] if index % 2 == 0
#    index += 1
#  end
#  new_array
# end



# p oddities([2, 3, 4, 5, 6]) 


# Write a method that returns true if the string passed as an argument is a palindrome, 
# false otherwise. (A palindrome reads the same forwards and backwards.) Case matters, and all characters should be considered.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
 array = string.split('')
 return true if array == array.reverse
 false
end

# p palindrome?('madam')

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false


# def real_palindrome?(string)
#  palindrome?(string.downcase.gsub(/\W/, ''))
# end

# p real_palindrome?("Madam, I'm Adam")


# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false



# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# def palindromic_number?(num)
#  array = num.to_s
#  return true if array == array.reverse
#  false
# end



# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true


# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"



# def short_long_short(string1, string2)
#  new_array = []
#  array1 = string1.split('')
#  array2 = string2.split('')
#  if array1.count > array2.count 
#   new_array << [array2.join, array1.join, array2.join]
#  else
#   new_array << [array1.join, array2.join, array1.join]
#  end
#  new_array.join
# end

# p short_long_short('abc', 'defgh') 


# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th

# 

# def number_ending(num)
#  num = num.to_s
#  array = num.to_s.split('')
#  return (num + "th") if array[-2] == '1'
#   if array.last == '1'
#    num + 'st'
#   elsif array.last == '2'
#   num + 'nd'
#   elsif array.last == '3'
#   else
#    num + 'th'
#   end
# end




# def century(num)
#  base = num / 100 
#  remainder = num % 100
#  return number_ending(base + remainder) if remainder > 0
#  number_ending(base)
# end


# p century(2001)

# def leap_year?(year)
#   if year < 1752 && year % 4 ==  0
#    true
#   elsif year % 400 == 0 
#    true
#   elsif  year % 100 == 0
#    false
#   else
#    year % 4 == 0
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true
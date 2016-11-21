# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# require 'pry'

# def triange(num)
#  index = 1
#  while index <= 6
#   space = " " * num
#    stars = "*" * index
#    puts space + stars
#    num -= 1
#    index += 1
#    binding.pry
#  end
# end

# triange(5)

# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



# def interleave(arr1, arr2)
#  new_array = []
#  index = 0
#  while index <= arr1.size - 1
#    new_array << arr1[index]
#    new_array << arr2[index]
#    index += 1
#  end
#  new_array
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, and one the number of characters that are neither.

# Examples

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }



# def letter_case_count(string)
#  hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
#   string.chars.each do |x|
#     if x =~ /[A-Z]/
#       hash[:uppercase] += 1
#     elsif x =~ /[a-z]/
#       hash[:lowercase] += 1
#     else
#      hash[:neither] += 1
#     end
#    end
#    hash
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Write a method that takes a single String argument and returns a new string that contains the original value of the argument, but the first letter of every word is now capitalized.

# You may assume that words are any sequence of non-blank characters, and that only the first character of each word must be considered.

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# def word_cap(string)
#  string.split(' ').map {|x| x.capitalize}.join(' ')
# end

# # p word_cap('four score and seven')


# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


# def swqpcase(string)
#  array =string.chars.map do |x|
#   if x =~ /[A-Z]/
#    x.downcase
#   else
#    x.upcase
#   end
#  end
#  array.join
# end

# p swqpcase('CamelCase') == 'cAMELcASE'
# p swqpcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Write a method that takes a String as an argument, and returns a new String that 
# contains the original value using a staggered capitalization scheme in which every other character is capitalized, 
# and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# def staggered_case(string)
#  index = 0
#  array = string.chars.map do |x|
#    if index % 2 == 0
#     index +=1 
#     x.upcase
#    else
#     index += 1
#     x.downcase
#    end
#  end
#  array.join
# end

# p staggered_case('I Love Launch School!')


# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Example:

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


#  def staggered_case(string)
#  index = 0
#  array = string.chars.map do |x|
#    if x =~ /[\W \d]/
#     x
#    elsif index % 2 == 0
#     index +=1 
#     x.upcase
#    else
#     index += 1
#     x.downcase
#    end
#  end
#  array.join
# end

# p staggered_case('I Love Launch School!')




# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# Write a method that takes an Array of integers as input, multiplies all of the numbers together, divides the result by the number of entries in the Array, 
# and then prints the result rounded to 3 decimal places.

# Examples

# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# def show_multiplicative_average(arr)
#  arr = arr.reduce(:*).to_f/ (arr.size).to_f
#  format('%.3f', arr)
# end

# p show_multiplicative_average([2, 5, 7, 11, 13, 17])


# p show_multiplicative_average([3, 5])
# # The result is 7.500

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# # The result is 28361.667
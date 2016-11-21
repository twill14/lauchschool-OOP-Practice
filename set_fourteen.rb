# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def thing(words)
#  string = words.upcase
#  BLOCKS.none? {|x| string.count(x) >= 2}
# end


# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. 
# Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, 
# one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# 1. Split the string by characters
# 2. Use =~ to determine what kind of thing the object is [A-Z], [a-z], or [\w]
# 3. Create three vars to capture the count of each object type lowercase_count, uppercase_count, neither_count
# 4. for each =~ true, increment the corresponding count 

# def letter_percentages(string)
#  hash = {lowercase: 0, uppercase: 0, neither: 0}
#  lower_count = 0 
#  upper_count = 0 
#  neither_count = 0
#   string.chars.each do |x|
#    if x =~ /[A-Z]/
#     upper_count += 1
#    elsif x =~ /[a-z]/
#     lower_count += 1
#    else
#     neither_count += 1
#    end
#   end
#   total = upper_count + lower_count + neither_count
#   low_per = lower_count.to_f/total.to_f
#   up_per = upper_count.to_f/total.to_f
#   neit_per = neither_count.to_f/total.to_f
#   hash[:lowercase] += low_per * 100
#   hash[:uppercase] += up_per * 100
#   hash[:neither] += neit_per * 100
#   hash
# end

# p letter_percentages('abCdef 123')
# p letter_percentages('AbCd +Ef') 

# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# def balanced?(string)
#  paren = 0
#  string.chars.each do |x|
#    paren += 1 if x == '('
#    paren -= 1 if x == ')'
#    break if paren < 0
#  end
 
#  paren.zero?
# end
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false


# A triangle is classified as follows:

#     equilateral All 3 sides are of equal length
#     isosceles 2 sides are of equal length, while the 3rd is different
#     scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 
# and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid 
# depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Examples:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid



# def triangle(sd1, sd2, sd3)
#  array = [sd1, sd2, sd3]
#  array = array.sort
#  return :invalid if array[0] + array[1] < array[2]
#  return :invalid if array[0] == 0 || array[1] == 0 || array[2] == 0
#  return :equilateral if array[0] == array[1] && array[1] == array[2]
#  return :isoceles if array.uniq != array
#  return :scalene if array[1] == (array[0] + 1) && array[2] == (array[0] + 2)
# end


# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isoceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid'


# A triangle is classified as follows:

#     right One angle of the triangle is a right angle (90 degrees)
#     acute All 3 angles of the triangle are less than 90 degrees
#     obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, 
# or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

# Examples:

# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid


# def triangle(ang1, ang2, ang3)
#    array = [ang1, ang2, ang3]
#    array = array.sort
#   return :invalid if array.include?(0)  || array.reduce(:+) < 180
#   return :right if array.include?(90)
#   return :obtuse if array[0] + array[1] < array[2]
#   return :acute if array.include?(90) == false
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) 
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) 
# p triangle(50, 50, 50) 


# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 
# So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. 
# Issue an error message if there is no next featured number.

# Examples:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999)

# def no_dupes(num)
#  array = num.to_s.chars
#    return true if array == array.uniq
#    false
# end

# def featured(num)
#  loop do
#    num += 1
#    return num if num % 7 == 0 && num.odd? == true && no_dupes(num) == true
#    break if num >= 9_876_543_210
#  end
#   puts "There is no number that fufills this requirement"
# end


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999)

# require 'pry'

# def bubblesort(array)
#   # iterate through the array. 
#   # access the values of the array by index. 
#   # Define when a swap can be made
#   # compare the first value in the array to the second. If first is bigger than second *SWAP
#   # Define a swap method that we can call in bubble sort. 
#   # Define new focus value (Second) and compare to (third)
#   # Make sure this is mutative
#   index = 0 
#   n = 1
#   loop do
#    swap = false
#     while index < array.size - n
#       if array[index] > array[index + 1]
#        array[index], array[index + 1] = array[index + 1], array[index] 
#        swap = true
#        index += 1
#       else 
#        index += 1 
#        next
#       end
#     end
#     break unless swap
#     index = 0
#     n += 1
#  end
#  nil
# end

# array = [6, 2, 7, 1, 4]

# bubblesort(array)

# p array


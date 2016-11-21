# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. 
# The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Examples:

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []


# def sequence(freq, mult)
#  new_array = []
#  value = mult
#  while freq > 0
#    new_array << value
#    value += mult
#    freq -= 1
#  end
#  new_array
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter Grade 90 <= score <= 100 'A' 80 <= score < 90 'B' 70 <= score < 80 'C' 60 <= score < 70 'D' 0 <= score < 60 'F'

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Example:

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"


# GRADES = {
#  'A' => (90..100).to_a,
#  'B' => (80...90).to_a,
#  'C' => (70...80).to_a,
#  'D' => (60...70).to_a,
#  'F' => (0...60).to_a
# }

# def get_grade(num1, num2, num3)
#  average = (num1 + num2 + num3)/3
#  GRADES.each do |key, val|
#    return key if val.include?(average)
#  end
#  "Grade not valid"
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# def buy_fruit(arr)
#  array = arr.map {|x| (x[0] + "," + " ") * x[1]}.join
#  array = array.split(" ")
#  array.last.gsub!(/[\W]/, '')
#  array.join(' ')
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])


# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

def rotate_array(arr)
 new_array = arr
 original_first = new_array[0]
 new_array.shift
 new_array.push(original_first)
end

# p rotate_array([7, 3, 5, 2, 9, 1])

# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915  
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917


def rotate_rightmost_digits(num, indx)
 array = num.to_s.split('')
 new_array = array[(-indx..array.size)] 
 array.pop(new_array.count)
 array << rotate_array(new_array)
 array.flatten.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915  
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917


# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
# Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 
# 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845


# def max_rotation(num)
#   count = num.to_s.chars.count
#   while count > 0
#     num = rotate_rightmost_digits(num, count)
#     count -= 1
#   end
#   num
# end

# p max_rotation(735291) == 321579# max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845


# def toggle_on_off(hash)
#  1.upto(hash.size) do |round_number|
#    hash.each do |key, val|
#     if key % round_number == 0
#       val == 'off' ? hash[key] = 'on' : hash[key] = 'off'
#     end
#    end
#  end
# end

# def lights_on(hash)
#  hash.keys.select {|num| hash[num] == 'on'}
# end


# lights = {}

# 1.upto(100) {|number| lights[number] = 'off'}

# toggle_on_off(lights)

# p lights_on(lights).count



# def toggle_on_off(arr)
#  1.upto(arr.size) do |round_number|
#     arr.each do |array|
#       if array[0] % round_number == 0
#         array[1] == 'off' ? array[1] = 'on' : array[1] = 'off'
#       end
#     end
#  end
# end

# def lights_on(array)
#   array.select {|num| num[1] == 'on'}
# end

# array = []

# 1.upto(100) {|number| array << [number, 'off']}

#  toggle_on_off(array)

# p lights_on(array).count


# def diamonds(num)
#  star_count = 1
#  while num > 0
#    space = " " * num
#    star = '*' * star_count
#    puts "#{space}#{star}#{space}"
#    star_count += 1
#    num -= 1
#  end
# end

# diamonds(5)


# def minilang(command)
#  stack = []
#  register = 0
#  command.split(' ').each do |cmnd|
#    case cmnd
#      when 'ADD' then register += stack.pop
#      when 'SUB' then register -= stack.pop
#      when 'PUSH' then stack.push(register)
#      when 'MULT' then register *= stack.pop
#      when 'DIV' then register /= stack.pop
#      when 'MOD' then register %= stack.pop
#      when 'POP' then register = stack.pop
#      when 'PRINT' then puts register
#      else             register = cmnd.to_i
#    end
#   end
# end


# puts minilang('5 PUSH 3 MULT PRINT')


# Write a method that takes a sentence string as input, and returns a new string that contains the original string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# NUMBERS = {
#  'one' => '1',
#  'two' => '2',
#  'three' => '3',
#  'four' => '4',
#  'five' => '5',
#  'six' => '6',
#  'seven' => '7',
#  'eight' => '8',
#  'nine' => '9'
# }


# def word_to_digit(words)
#   words.gsub(/#{NUMBERS.keys.join("|")}/, NUMBERS)
# end


# p word_to_digit('Please call me at Five Five five one two three four. Thanks.')



# def fibonnaci(nth)
#  return 1 if n <= 2
#   fibonnaci(nth - 1) + fibonnaci(nth - 2)
# end

# def fibbonacci(nth)
#  first, last = [1, 1]
#  3.upto(nth) do
#   first, last = [last, first + last]
#  end
#  last
# end
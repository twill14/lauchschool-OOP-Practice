def stringy(num)
 array = Array.new(num)
 index = 0
 while index <= array.size - 1
   if index % 2 == 0
    array[index] = 1
   else
    array[index] = 0
   end
   index += 1
 end
 array.join('')
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'




Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers.

Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(array)
  array.reduce(:+) / array.size
end


p average([1, 5, 87, 45, 8, 8])

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40



Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).


def sum(int)
 int.to_s.split('').map {|x| x.to_i}.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.
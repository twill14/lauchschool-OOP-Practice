# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# def remove_vowels(arr)
#  arr.map {|word| word.gsub(/[aeiouAEIOU]/, '')}
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))

# p remove_vowels(%w(green YELLOW black white))

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition,
# and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
# For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations to enter the 2 digit numbers.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# Examples:

# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# 1 create fibonacci sequence. limit the sequence until the number of digits in the sequence is equal to num

# def ind_fibonacci_index_by_length(num)
#  fib_array = [1, 1]
#  index = 2
#  while fib_array[index - 1].to_s.length < num
#    fib_array << fib_array[index - 2] + fib_array[index - 1]
#    index += 1
#  end
#  fib_array.size
# end

# def find_fibonacci_index_by_length(num)
#  index_zero = 1
#  index_1 = 1
 
# end

# p find_fibonacci_index_by_length(2)


# p ind_fibonacci_index_by_length(10)

# "13".length

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!([]) # => []
# list == []

# def reverse!(arr)
#  new_array = []
#  index = arr.size - 1
#  while index >= 0
#    new_array << arr[index]
#    index -= 1
#  end
#    arr.map! {|x| nil}.push(new_array).flatten!.shift(arr.size/2)
#    arr
# end

# list = ['abc']
# p reverse!(list) # => ["abc"]
# p list == ["abc"]


# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 2, 3]                     # => true
# new_list == [3, 2, 1]  

# def reverse(arr)
#  new_array = []
#  index = arr.size - 1
#  while index >= 0
#    new_array << arr[index]
#    index -= 1
#  end
#  new_array
# end

# list = [1, 2, 3]                      # => [1, 2, 3]
# p new_list = reverse(list)              # => [3, 2, 1]


# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# def merge(arr1, arr2)
#  new_array = []
#   index_arr1 = 0 
#   while index_arr1 <= arr1.size - 1
#     new_array << arr1[index_arr1]
#     index_arr1 += 1
#   end
#   index_arr2 = 0 
#   while index_arr2 <= arr1.size - 1
#     new_array << arr2[index_arr2]
#     index_arr2 += 1
#   end
#   new_array.uniq
# end


# p merge([1, 3, 5], [3, 6, 9])


# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# check size of array, determine is size is even or odd. If even split array into two arrays with the same number of elements each. If odd, split in half with first element containing on additional element

# require 'pry'

# def halvsies(arr)
#  new_array = []
#  count = arr.size
#  if count.even?
#    new_array << arr[(0..(arr.size/2) - 1)]
#    new_array << arr[((arr.size/2)..((arr.size) -1))]
#  else
#    new_array << arr[(0..(arr.size/2))]
#    binding.pry
#    new_array << arr[((arr.size/2 + 1)..((arr.size) -1))]
#    binding.pry
#  end
#  new_array
# end

# p halvsies([5])

# arry = [1,2,3]

# arry[3]





# Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), 
# how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.

# Examples:

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


# def find_dup(arr)
#  new_array = []
#  value = 0
#  arr.each do |x|
#   value = x
#   break if new_array.include?(x)
#    new_array << x
#  end
#  value
# end

# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58])
          
# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# def include?(arr, num)
#  arr.each do |x|
#   return true if x == num
#  end
#  false
# end

# p include?([1,2,3,4,5], 3)

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false  
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Examples:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# def sum_square_difference(num)
#   # create a range between 1 and the num 
#   # Array.reduce(+:)**2 - Array.map{|x| x**2}.reduce(+:)
#   array = (1..num).to_a
#   left_side = array.reduce(:+)**2
#   right_side = array.map {|x| x**2}.reduce(:+)
#   return (left_side - right_side)
# end

# p sum_square_difference(3)
# p sum_square_difference(3) == 22
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze


# File.open('madlibs.txt') do |file|
#  file.each do |line|
#   puts format(line, noun: NOUNS.sample,
#                     adjective: ADJECTIVES.sample,
#                     verb: VERBS.sample,
#                     adverb: ADVERBS.sample)
#   end
# end

# require 'pry'
# def transpose(arr)
#  new_matrix = []
#  matrix_rows = arr.size
#  matrix_colums = arr.first.size
#  (0...matrix_colums).each do |columns|
#   rows = (0...matrix_rows).map {|row_index| arr[row_index][columns]}
#   new_matrix << rows 
#  end
#  new_matrix
# end



# # p transpose(matrix)

# p new_row = (0..2).map { |x| x}

# p hello = (0..2).to_a

# def transpose(arr)
#  new_matrix = []
#  row = 0
#  column = 0
#   while column <= arr.first.size - 1
#   new_matrix << []
#     while row < arr.size
#       new_matrix[column] << arr[row][column]
#       row += 1
#     end
    
#     row = 0
#     column += 1
#   end
#   new_matrix
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2]
# ]

# p transpose(matrix)

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]


# def transpose(arr)
#  new_matrix = []
#  column_length = arr.first.size
#  row_length = arr.size
 
#  (0...column_length).each do |column|
#    rows = (0...row_length).map {|row| arr[row][column]}
#    new_matrix << rows
#  end
#  new_matrix
# end

# require 'pry'

# def rotate90(matrix, degree)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row.reverse
#   end
#   if degree > 90
#     iterations = (degree / 90) - 1
#     iterations.times do 
#     result = rotate90(result, 90)
#     end
#    else
#     result
#  end
#  result
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p rotate90(matrix, 180)

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])


# The elements of an Array can be permuted, that is, arranged, in a variety of different sequences. Such rearrangements are called permutations. 
# So, for example, both [2, 3, 1] and [1, 3, 2] are permutations of the array [1, 2, 3]. The complete list of permutations for [1, 2, 3] is an Array of Arrays 
# in which each nested Array is a permutation of the original Array:

# [
#   [1, 2, 3],
#   [1, 3, 2],
#   [2, 1, 3],
#   [2, 3, 1],
#   [3, 1, 2],
#   [3, 2, 1]
# ]

# Write a method that takes an Array, and returns an Array of Arrays that represent the permutations of the original Array. 
# The order of the permutations does not matter. You may not use the Array
# #permutations method nor any other standard method that is meant to generate permutations -- please devise your own way of generating the permutations.

# For simplicity, you may assume that each element of the array has a unique value.

# Examples:

# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])
# # -> [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
# #     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
# #     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
# #     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
# #     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
# #     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
# #     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
# #     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]


# def permutations(arr)
#   new_array = []
#    new_array << arr
#   new_array
# end

# p permutations([1, 2, 3])


# require 'pry'
# array = [1,2,3,4,5]

# def permutations(array)
#   return [array] if array.size == 1

#   result = []
#   array.each_with_index do |element, index|
#     sub_array = array[0...index] + array[(index + 1)..-1]
#     #binding.pry
#     sub_permutations = permutations(sub_array)
#     #binding.pry
#     sub_permutations.each do |permutation|
#     # binding.pry
#       result << [element] + permutation
#      # binding.pry
#     end
#   end

#   result
# end

# p permutations(array)
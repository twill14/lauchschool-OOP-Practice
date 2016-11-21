# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]



# def merge(arr1, arr2)
#  combined_array = []
#  sorted_array = []
#  combined_array << arr1 + arr2
#  combined_array = combined_array.flatten
 
#  choosen_index = 0
 
#  while combined_array.size > 0
#  smallest = (combined_array.reduce(:+) + 1)
#   combined_array.each_with_index do |item, index|
#    if item < smallest
#     smallest = combined_array[index]
#     choosen_index = index
#    else
#     next
#    end
#   end
#   sorted_array << smallest
#   combined_array.delete_at(choosen_index)
#  end 
 
#  sorted_array
# end

# # p merge([1, 5, 9], [2, 6, 8])

# # p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# # p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# # p merge([], [1, 4, 5]) == [1, 4, 5]
# # p merge([1, 4, 5], []) == [1, 4, 5]

# require 'pry'

# def merge_sort(arr)
 
#  return arr if arr.size == 1
 
#  sub_1 = arr[0...arr.size/2]
#  binding.pry
#  sub_2 = arr[arr.size/2..-1]
#  sub_1 = merge_sort(sub_1)
#  binding.pry
#  sub_2 = merge_sort(sub_2)
#  binding.pry
#  merge(sub_1, sub_2)
# end

# p merge_sort([9, 5, 7, 1])

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   binding.pry
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(size)
#   number_of_stars = 1
#   while number_of_stars <= size
#   stars = '*' + ' ' * number_of_stars + '*'
#   puts stars.center(size + 1)
#   number_of_stars += 2
#   end
#   number_of_stars = size - 2
#   while number_of_stars > 0
#   stars = '*' + (' ' * number_of_stars)+'*'
#   puts stars.center(size)
#   number_of_stars -= 2
#   end
# end




# diamond(11)
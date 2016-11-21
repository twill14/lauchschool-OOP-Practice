# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.


# def sum(num)
#  (1..num).to_a.reduce(:+)
# end

# def product(num)
#  (1..num).to_a.reduce(:*)
# end

# puts "Please enter an integer greater than 0"
# integer = gets.chomp.to_i

# puts "Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# if choice == 's'
#   solution = sum(integer)
# else 
#   solution = product(integer)
# end

# puts "The sum of the integers between 1 and #{integer} is #{solution}"

# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?


# What will the following code print, and why? Don't run the code until you have tried to answer.

# array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C') }
# puts array2


# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongs the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# Write a program that prompts the user for two positive integers, and then prints the results of the following operations 
# on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# puts "Enter first number"
# num1 = gets.chomp.to_i

# puts "Enter second number"
# num2 = gets.chomp.to_i


# puts "Addition: #{num1} + #{num2} =  #{num1 + num2}"



# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk

# output:

# There are 4 characters in "walk".

# input:

# Please write word or multiple words: walk, don't run

# output:

# There are 13 characters in "walk, don't run".


# array = "walk, don't run".split('')

# array.delete(' ')


# p array.count


# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:

# multiply(5, 3) == 15


# def multiply(num1, num2)
#  num1 * num2
# end

# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the 
# square of its argument (the square is the result of multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64


# def square(num)
#  multiply(num,num)
# end

# The || operator returns true if either or both of its operands are true, false if both operands are false. 
# The && operator returns true if both of its operands are true, and false if either operand is false. 
# This works great until you need only one of two conditions to be true, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is true, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false


# def xor?(bool1, bool2)
#  return true if bool1 == true && bool2 == false
#  return true if bool1 == false && bool2 == true
#  false
# end




# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

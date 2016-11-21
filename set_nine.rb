# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# def substrings(string)
#  new_array = []
#  string = string.chars
#  while string.size > 0
#    new_array << substrings_at_start(string.join)
#    string.shift
#  end
#   new_array.flatten
# end

# p substrings('abcde')


# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# def palindrome?(string)
#   return true if string.chars == string.chars.reverse && string.chars.size > 1
#   false
# end


# def palindromes(string)
#  substrings(string).select {|x| palindrome?(x)}
# end



# p palindromes('knitting cassettes')

# p palindrome?("hih")



# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, 
# print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

# fizzbuzz(1, 15)



# def fizzbuzz(min, max)
#  new_array = []
#  (min..max).to_a.each do |num|
#   if num % 3 == 0 && num % 5 == 0
#    new_array << 'FizzBuzz'
#   elsif num % 5 == 0
#    new_array <<  'Buzz'
#   elsif num % 3 == 0
#    new_array <<  "Fizz"
#   else
#    new_array <<  num
#   end
#  end
#  new_array.join(', ')
# end


# puts fizzbuzz(1, 15)


# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''


# def repeater(string)
#  string.chars.map {|x| x * 2}.join('')
# end

# p repeater('Hello')

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''



# Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# CONSONANTS = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

# def double_consonants(string)
#  new_array = []
#  string.chars.each do |x| 
#    new_array << x
#    new_array << x if CONSONANTS.include?(x.downcase)
#  end
#  new_array.join
# end

# p double_consonants('Hello-World')

# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # Note that zeros get dropped!
# reversed_number(1) == 1


# def reversed_number(num)
#  new_array = []
#  while num != 0
#    base, remainder = num.divmod(10)
#    new_array << remainder
#    num = base
#  end
#  new_array.join.to_i
# end

# p reversed_number(12345)

# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. 
# If the argument has an even length, you should return exactly two characters.

# Examples:

# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# def center_of(string)
#  array = string.chars
#  if array.count % 2 == 0
#    array[(array.count/2) - 1] + array[(array.count/2)]
#  else
#   array[(array.count/2)]
#  end
# end

# p center_of('Launch')

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

 # MIN_PER_HOUR = 60

# HOUR_PER_DAY = 24

# MIN_PER_DAY = HOUR_PER_DAY * MIN_PER_HOUR 

# def time_of_day(num)
#  num = num % MIN_PER_DAY
#  hours, min = num.divmod(60)
#  format("%02d:%02d", hours, min)
# end

# DEGREE = "\xC2\xB0"

# SECONDS_IN_MIN = 60

# MIN_IN_DEGREE = 60

# SECONDS_IN_DEGREE = SECONDS_IN_MIN * MIN_IN_DEGREE

# def dms(num)
#  total_seconds = (num * SECONDS_IN_DEGREE).round
#  degrees, remaining_seconds = total_seconds.divmod(SECONDS_IN_DEGREE)
#  minutes, seconds = remaining_seconds.divmod(MIN_IN_DEGREE)
#  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# p dms(30)


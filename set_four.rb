def calculate_bonus(num, bool)
 return num / 2 if bool
   0
end

p calculate_bonus(2800, false)

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

"Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200."
Example Output
Teddy is 69 years old!

age = (20..200).to_a.sample
puts "Teddy is #{age} years old!"

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

def area(length, width)
 square_meters = length * width
 area_square_feet = square_meters * 10.7639
  puts "The area of the room is #{square_meters} square meters (#{area_square_feet.round(2)} square feet)"
end

puts "Enter the length of the room in meters"
length = gets.chomp.to_i

puts "Enter the width of the room in meters"
width = gets.chomp.to_i

area(length, width)



Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0


require 'bigdecimal'

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f



percentage = percentage / 100

tip = percentage * bill
total = tip + bill

puts "The tip is $#{"%.2f" %  tip}"
puts "The total is $#{"%.2f" %  total}"


Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

require "date"

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

year = Date.today.year

retire_year = year + (retire - age)

years_left = retire_year - year

puts" It's #{year}. You will retire in #{retire_year}"
puts " You have only #{years_left} yeers of work to go!"



Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

puts " What is your name?"
answer = gets.chomp

name = answer.split('')
if answer.split('').last == '!'
  name.pop
  puts "HELLO #{name.join.upcase}! WHY ARE WE SCREAMING?"
 else
  puts "Hello #{name * ''}."
 end

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).to_a.each {|x| puts x if x.odd?}
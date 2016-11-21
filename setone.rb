class Tree
    include Enumerable
end

def compute(arg)
    return "Does not comput" unless block_given?
    yield(arg)
end

p compute(3) {|arg| arg + 5}
p compute(1) {|arg| arg * 5}
p compute(2) {|arg| arg /1}

def missing(arr)
  new_arr = (arr[0]..arr[-1]).to_a
  new_arr.select{|x| arr.include?(x) == false}
end

p missing([-3, -2, 1, 5])
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


def divisors(num)
    results = []
    range = (1..num).to_a
    index = 0
    while index < range.size
      results << range[index] if num % range[index] == 0
      index += 1
    end
    results
end



p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] #

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unyog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Wbua Ngnanfbss',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(encrypted_text)
  encrypted_text.each_char.reduce('') do |result, encrypted_char|
    result + decipher_character(encrypted_char)
  end
end

def decipher_character(encrypted_char)
  case encrypted_char
    when "a"..'m', "A".."M" then (encrypted_char.ord + 13).chr
    when "n".."z", "N".."Z" then (encrypted_char.ord - 13).chr
    else                          encrypted_char
  end
end

p ENCRYPTED_PIONEERS.each {|x| puts rot13(x)}

def any?(arr)
  counter = 0
  while counter < arr.size
    return true if yield(arr[counter]) == true
    counter += 1
  end
  
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

def all?(arr)
  counter = 0
  truth_counter = 0
  while counter < arr.size
    truth_counter += 1 if yield(arr[counter]) == true
    break if yield(arr[counter]) == false
    counter += 1
  end
  return true if truth_counter == arr.size
  false
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true

def none?(arr)
  counter = 0
  false_counter = 0
  while counter < arr.size
    false_counter += 1 if yield(arr[counter]) == false
    break if yield(arr[counter]) == true
    counter += 1
  end
  return true if false_counter == arr.size
  false
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == truep 

def none?(collection, &block)
  !any?(collection, &block)
end

def one?(arr)
  counter = 0
  truth_counter = 0
  while counter < arr.size
    truth_counter += 1 if yield(arr[counter])
    break if truth_counter > 1
    counter += 1
  end
  return false if truth_counter > 1
  true
end

p one?([1, 3, 5, 6]) { |value| value.even? }  
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }   

def count(arr)
  counter = 0
  truth_counter = 0
  while counter < arr.size
    truth_counter += 1 if yield(arr[counter])
    counter += 1
  end
  truth_counter
end



p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2

p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

def step(first, last, stp)
  var = first
  yield(var)
  while var < last
    var += stp
    yield(var)
  end
end

p step(1, 10, 3) { |value| puts "value = #{value}" }

def zippy(arr, arr2)
  index = 0
  result = []
  while index < arr2.size
    result << [arr[index], arr2[index]]
    index += 1
  end
  
  result
end

p zippy([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

def mappy(arr)
  counter = 0 
  result = []
  while counter < arr.size
    result[counter] = yield(arr[counter])
    counter += 1
  end
  
  result
end

p mappy([1, 3, 6]) { |value| value**2 }
p mappy([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p mappy([]) { |value| true } == []
p mappy(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p mappy(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p mappy([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

def count(arr)
  counter = 0
  truth_counter = 0
  while counter < arr.size
    truth_counter += 1 if yield(arr[counter])
    counter += 1
  end
  truth_counter
end

p count([1, 3, 6]) { |value| value.odd? } == 2
p count([1, 3, 6]) { |value| value.even? } == 1
p count([1, 3, 6]) { |value| value > 6 } == 0
p count([1, 3, 6]) { |value| true } == 3
p count([]) { |value| true } == 0
p count([1, 3, 6]) { |value| value - 6 } == 3

def drop_while(arr)
  counter = 0
  array = []
  while counter < arr.size
    array << arr[counter] if yield(arr[counter]) == false
    counter += 1
  end
  array
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } 
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []

def each_with_index(arr)
  counter = 0 
  while counter < arr.size
    yield(arr[counter], counter)
    counter += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result


def each_with_object(arr, thing)
    counter = 0 
  while counter < arr.size
    yield(arr[counter], thing)
    counter += 1
  end
  thing
end


result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result 


def max_by(arr)
  return nil if arr.empty?
      counter = 0 
      base = arr.first
      result = 0
  while counter < arr.size
    if yield(arr[counter]) > yield(base)
      base = arr[counter]
    end
    counter += 1
  end
  base
end

p max_by([1, 5, 3]) { |value| value + 2 }
p max_by([1, 5, 3]) { |value| 9 - value }
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]

def each_cons(arr)
  count = 0
  while count < arr.size - 1
    yield(arr[count], arr[count + 1])
    count += 1
  end
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
 

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end

p hash == {'a' => 'b'}


def each_cons(arr, num)
  count = 0
  while count < arr.size - 1
  break if count + num - 3 >= arr.size
    yield(arr[count], arr[(count + 1)..(count + num)])
    
    count += 1
  end
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash 

class Tree
  include Enumerable
  
  def each
  end
  
  def select
  end
end


def compute
  return yield if block_given? 
  "Does not compute"
end

p compute

p compute {5 + 3}

p compute {'a' + 'b'}

def missing(arr)
  range = (arr[0]..arr[-1]).to_a
  range.select do |x|
    !arr.include?(x)
  end
end


p missing([-3, -2, 1, 5])
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

require 'profile'


def divisors(num)
  1.upto(Math.sqrt(num)).select do |x| 
    num / x
  end
end



p divisors(12)

def any?(arr)
  arr.each do |x|
  return true if yield(x) == true
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

def all?(arr)
  arr.each do |x|
    return false if yield(x) == false
  end
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true

def none?(arr)
  arr.each do |x|
    return false if yield(x) == true
  end
  true
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true


return false if a more than one
def one?(arr)
  counter = false
  arr.each do |x|
    next unless yield(x)
    return false if counter
    counter = true
  end
  counter
end

p one?([1, 3, 5, 6]) { |value| value.even? }   
p one?([1, 3, 5, 7]) { |value| value.odd? }    
p one?([2, 4, 6, 8]) { |value| value.even? }   
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 }
p one?([1, 3, 5, 7]) { |value| true }          
p one?([1, 3, 5, 7]) { |value| false }         
p one?([]) { |value| true }             

def count(arr)
  counter = 0 
  arr.each do |x|
    counter += 1 if yield(x)
  end
  counter
end


p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

def step(first, last, count)
  range = (first..last).to_a
  counter = first
  while counter <= last
    yield(counter)
    counter += count
  end
  first
end

step(1, 10, 3) { |value| puts "value = #{value}" }

create rnage from first to last numbers
iterate through the numbers including the first, and then each number after adding three till the final number(to be included)


def zip(arr1, arr2)
  result = []
  index = 0 
  while index < arr1.size
    result << [arr1[index], arr2[index]]
    index += 1
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
create a new empty array
itterate through either arr1 or arr2 in order to 

def map(arr)
  result = []
  index = 0
  while index < arr.size
    result << yield(arr[index])
    index += 1
  end
  result
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

def count(*items)
  return 0 if items.empty?
  index = 0
  count = 0
  while index < items.size
    count += 1 if yield(items[index])
    index += 1
  end
  count
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3

def drop_while(array)
    index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end

p drop_while([1, 3, 5, 6]) { |value| value.even? }

def each_with_index(arr)
  index = 0
  while index < arr.size
    yield(arr[index], index)
    index += 1
  end
  arr
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

def each_with_object(arr, list)
  index = 0
  while index < arr.size
    yield(arr[index], list)
    index += 1
  end
  list
end

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}

def max_by(arr)
  index = 0
  highest_num = 0
  highest_index = 0
  while index < arr.size
    if yield(arr[index]).to_i > highest_num
      highest_index = index
      highest_num = yield(arr[index])
    end
    index += 1
  end
  arr[highest_index]
end

def each_cons(arr)
  index = 0 
  while index < arr.size - 1
    yield(arr[index], arr[index + 1])
  index += 1
  end
end

def each_cons(arr, n)
  index = 0 
  while index < arr.size - 1
    break if index + n - 3 >= arr.size
    yield(arr[index], arr[(index + 1)..(index + n)])
    index += 1
  end
end


def each_cons(arr, num)
  count = 0
  while count < arr.size - num + 1
    yield(arr[count], *arr[(count + 1)..(count + num - 1)])
    count += 1
  end
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end
  
  def listen
  record(yield) if block_given?
  end
  
  def play
  p @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play

class TextAnalyzer
  def process
    file = File.open("sample.txt", "r")
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("/n/n").count} paragraphs" }
analyzer.process { |file| puts "#{file.split("/n")} lines" }
analyzer.process { |file| puts "#{file.split.count} words" }

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(*items)
  puts "Let's start gathering food."
  yield(items)
  puts "Let's start gathering food."
end

gather(items) do |items|
  
  puts "#{items.join(', ')}"
  
end

bs = %w(raven finch hawk eagle)

def birds(arr)
  yield(arr)
end

p birds(bs) {|_, _, *x| "Birds of prey are #{x.join(" and ")}" }

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*vals, last |
  puts "#{vals.join(", ")}"
  puts last
end

gather(items) do |first , *vals, last |
  puts "#{first}"
  puts "#{vals}"
  puts "#{last}"
end

puts "========== Proc ============"
puts""
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

puts "========== Lambda ============"
puts""
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

puts "========== Block (implicit) ============"
puts""
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')


puts "========== Block (explicit) ============"
puts""
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}
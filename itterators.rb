#!/usr/bin/ruby -w
$LOAD_PATH << '.'

# init
test_array = [1, 3, 0, 8, 1,-6, -1, 5, 6, 10, 4, 11, 6, 12, 8, 7]

def absolute(number)
  ((1...number).to_a.select { |i| number % i == 0}).reduce(:+) == number
end

# task 1 
p "Task 1"
p test_array

count = 0
test_array.each do |i|
  next if i == 0
  count +=1 if i.even?
end

p "even numbers is #{count}"


# task 2
p "Task 2"

p "Pleas print max number"
count = gets.chomp.to_i

absolute_array = Array.new
(1..count).each { |n| absolute_array.push(n) if absolute(n)}

p "absolute numbers from #{count} is #{absolute_array.join(',')}"

# task 3
p "Task 3"
p test_array
sum = (1...(test_array.size - 1))
        .select{ |i| (test_array[i] > test_array[i + 1]) && (test_array[i] > test_array[i - 1]) }
        .size
p "Local maxes in array #{sum}"

# task 4
p "Task 4"
p "Interval #{interval = (2..6)}"
p "Array #{test_array}"
p "Elements in Interval #{ test_array.reject{|i| !interval.to_a.include?(i)}}"
p "Elements in Interval #{test_array & interval.to_a}"


# task 5
p "Task 5"
p "Constant for array #{ const = 3 }"
p "Period for repeat #{ period = 10 }"

diapazon = (4..period)
row = diapazon.inject(1 + const + const*2 - const*3){ |result, i| result + (((-1)**i)*const*i)}

p "Result for row '1 + А + А*2 - А*3 + … + ((-1)**N)*А*N': #{row}"


# task 6
p "Task 6"
number = 10.6
p "#{test_array.inject{|result, val| (number-val).abs < (number-result).abs ? val : result}} closer to #{ number }"

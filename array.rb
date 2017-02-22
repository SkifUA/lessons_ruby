#!/usr/bin/ruby -w

# init
test_array = [1, 3, 0, 8, 1, -1, 5, 6, 10, 4, 11, 6, 12, 8, 7]
second_array = Array.new(test_array.size).map(){rand(test_array.min..test_array.max)}
p end_interval = rand(1..test_array.size)
p start_interval = rand(0...end_interval)
p interval = (start_interval..end_interval)
p "Original array #{test_array}"

# task 1
p "TASK 1"
ansver1 = test_array.size - (test_array.rindex(test_array.max) + 1)

p "After MAX element is #{ansver1} elements."


# task 2
p "TASK 2"
tester = Array.new(test_array)
count = 2
ansver2 = Array.new

loop = 0
while loop < count do
  ansver2 << tester.index(tester.min)
  tester[tester.index(tester.min)] = tester.max
  loop +=1
end

p "Position 2 min elements: " + ansver2.join(', ')

# task 3
puts "TASK 3"
tester = Array.new(test_array)
uniqu = tester.uniq
an_uniq = (tester.size - uniqu.size) *2

p "Not unique elements is #{an_uniq}"


# task 4
p "TASK 4"
tester = Array.new(test_array)

min_element_index, max_element_index = tester.index(tester.min),  tester.index(tester.max)

min_element_index, max_element_index = max_element_index, min_element_index if min_element_index > max_element_index

tester[min_element_index + 1...max_element_index] = tester[min_element_index + 1...max_element_index].reverse

p "Original array #{test_array.join(', ')}"
p "Result array #{tester.join(', ')}"

# task 5
p "TASK 5"
tester = Array.new(test_array)

(0...tester.index(tester.min)).each { tester << tester.shift}

p "move elements after min to end #{tester.join(', ')}"

# task 6
p "TASK 6"
tester = Array.new(test_array)

min, max = tester.index(tester.min), tester.index(tester.max)
tester[min], tester[max] = tester.max, tester.min

p "change min and max elements #{tester.join(', ')}"

# task 7
p "TASK 7"
tester = Array.new(test_array)
p "first #{tester.inspect}"
p "second #{second_array}"
p "do not match elements #{(tester - second_array) | (second_array - tester)}"
p "match elements #{tester & second_array}"

# task 8
p "TASK 8"
p tester = Array.new(test_array)
p "max element into interval #{interval} is #{tester.slice(start_interval, interval.size).max}"
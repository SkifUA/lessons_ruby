#!/usr/bin/ruby -w

# init
array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array2 = [11, 2, 31, 4, 15, 6, 7, 8, 0]

# 1
max, min = array1.max, array1.min

# 2
array2.reject! { |val| val > max || val < min}

# 3
array2.push(max)
array2.unshift(min)

# 4
average = array2.reduce(:+) / (array2.size.to_f)
array2.reject! {|val| val > average}

p array2
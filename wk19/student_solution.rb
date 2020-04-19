p "hello world"

adjective = "Big Bad"

p "hello #{adjective} world"

sup_world = "hello world".upcase

p sup_world

# ---------------------------------------------------------------------
# Nums Array and Enumerables
# ---------------------------------------------------------------------

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

p nums.uniq

# .push and .pop , .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)

p nums.push(420)
p nums.pop()
p nums.shift()
p nums.unshift(420)

# Use .include? to check if the array contains the number 8
p nums.include?(8)

# Use .find_all to find all the numbers greater than 10
p nums.find_all {|n| n > 10 }

# use .all? to check if all the numbers are greater than 0?
p nums.all? {|n| n > 0 }

# use any? to check if there are any numbers that are divisible by 8
p nums.any? {|n| n % 5 }

# use .count to let you know how many numbers are greater than 4
p nums.count {|n| n > 4 }

# use .each_with_index to print each item times its index
nums.each_with_index {|n,index| print "#{index * n} "}
p "\n"

# .find the number that is divisible by 7 and 5 and is greater than 0
p nums.find {|n| n % 7 && n % 5 && n > 0}

# .find_index of the number that is divisible by 5 and 7 and is greater than 0
p nums.find_index { |n, index| n % 5 && n % 7 && n > 0}

# return the .first 3 numbers
p nums.first(3)

# return the .last 5 numbers
p nums.last(5)

# .group_by the modulo of 3 ( % 3 )
p nums.group_by { |n| n % 3 }

# use minmax to return the smallest and largest number
p nums.minmax

# use .reject to return all the numbers that are NOT divisible by 3
p nums.reject {|n| n % 3 == 0}

# use .select to return all the numbers divisible by 5
p nums.select {|n| n % 5 == 0}

# -----------------------------------------------------------------------
# COLORS ARRAY
# -----------------------------------------------------------------------

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# Print out a random color.
p colors.sample

# Print out the colors array in reverse order.
p colors.reverse

# Print out all of the colors in the array with all capital letters.
colors.map {|string| print "#{string.upcase} "}
p "\n"


# -----------------------------------------------------------------------
# METHODS
# -----------------------------------------------------------------------
# Write a method named find_area that finds the area of a rectangle when given values for width and height

def find_area height, width
    height * width
end
p find_area(210,2)

# Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5

numbers = [5, 5, 6, 84, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    p arr.map {|n| n * 5}
end
multiply_each_by_five(numbers)
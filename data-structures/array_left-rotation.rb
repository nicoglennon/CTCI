# Given an array of n integers and a number, d, perform d left rotations on the array. Then print the updated array as a single line of space-separated integers.

# Input Format

# The first line contains two space-separated integers denoting the respective values of n (the number of integers) and d (the number of left rotations you must perform). 
# The second line contains n space-separated integers describing the respective elements of the array's initial state.

# Constraints

# 1 <= d <= n

# Output Format

# Print a single line of n space-separated integers denoting the final state of the array after performing d left rotations.

# Sample Input

# 5 4
# 1 2 3 4 5

# Sample Output

# 5 1 2 3 4

##############################


# SETUP

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

# MY SOLUTION

# optimized number of times needed to rotate array (r)
r = k % n

# map
a = a.map.with_index{|item, index| a[(index + r) % n] }

# print 
a.each do |number|
    print number
    print " "
end

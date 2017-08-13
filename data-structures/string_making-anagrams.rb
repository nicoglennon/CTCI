# Given two strings, a and b, that may or may not be of the same length, determine the minimum number of character deletions required to make a and b anagrams. Any characters can be deleted from either of the strings.

# Input Format
#
# The first line contains a single string, a.
# The second line contains a single string, b.
#
# Constraints
#
# It is guaranteed that  and  consist of lowercase English alphabetic letters (i.e.,  through ).

# Output Format
#
# Print a single integer denoting the number of characters you must delete to make the two strings anagrams of each other.

####################################

# SETUP

a = gets.strip
b = gets.strip

# MY SOLUTION

# sort the strings
a = a.chars.sort
b = b.chars.sort

# insert each deleted char in an array
deleted = []

def compare(a, b, deleted)
  # if either array is already empty, shift the other array
  if a.first == nil || b.first == nil
    if a.first == nil
      deleted << b.shift
    else
      deleted << a.shift
    end

  # if the first char in a is larger than b's, shift b.first to the deleted array
  elsif a.first > b.first
    deleted << b.shift

  # if the first char in b is larger than a's, shift a.first to the deleted array
  elsif a.first < b.first
    deleted << a.shift

  # if the first two chars of each array are equal, shift them both (but do not count as deleted)
  else
    a.shift
    b.shift
  end
end

until a.length == 0 && b.length == 0
    compare(a, b, deleted)
end

# print result (length of deleted items)
p deleted.length

# Task
# Given n, complete the fibonacci function so it returns fibonacci(n).

# Input Format
# Locked stub code in the editor reads a single integer denoting the value of n and passes it to the fibonacci function.

# Output Format
# Locked stub code in the editor prints the value of fibonacci(n) returned by the fibonacci function.


# MY SOLUTION

dict = {}

def fibonacci(n):
    if n < 2:
        return n
    try:
        return dict[n]
    except:
        dict[n] = fibonacci(n - 1) + fibonacci(n - 2)

    return dict[n]

n = int(input())
print(fibonacci(n))

# Given the root node of a binary tree, can you determine if it's also a binary search tree?

# Note: We do not consider a binary tree to be a binary search tree if it contains duplicate values.

# Input Format
# You are not responsible for reading any input from stdin. Hidden code stubs will assemble a binary tree and pass its root node to your function as an argument.

# Output Format
# You are not responsible for printing any output to stdout. Your function must return true if the tree is a binary search tree; otherwise, it must return false. Hidden code stubs will print this result as a Yes or No answer on a new line.

# Node is defined as
# class node:
#     def __init__(self, data):
#         self.data = data
#         self.left = None
#         self.right = None
#

arr = []
def flatten_tree(root):

    if root != None:
        if root.left != None:
            flatten_tree(root.left)

        arr.append(root.data)

        if root.right != None:
            flatten_tree(root.right)


def checkBST(root):
    # flatten the tree to an array
    flatten_tree(root)
    # if array has any repeats, it is not a BST
    if len(arr) != len(set(arr)):
        return False
    #sort the array
    sorted_arr = sorted(arr)
    # check if sorted array is same as array (if so, it is a BST)
    return (sorted_arr == arr)

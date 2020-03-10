# frozen_string_literal: true
#reference : https://medium.com/@jessgreb01/data-structures-trees-and-ruby-2959c47ffa26
# A tree is also a node-based data structure, but within a tree, each node can have links to multiple nodes.
# A binary tree is a tree that abides by the following rules: 
#     • Each node has either zero, one, or two children. 
#     • If a node has two children, it must have one child that has a lesser value than the parent,
#     and one child that has a greater value than the parent.

# create a node class 

class Node 
    attr_reader :value
    attr_accessor :left , :right

    def initialize(value = nil)
        @value = value
        @left = nil
        @right = nil
    end
end 

# use above node class to create Binary Tree 
#initialize tree with first node as root 
class Binary_Tree
    attr_accessor :root

    def initialize(root_val = nil)
        @root = Node.new(root_val)
    end
end

tree = Binary_Tree.new

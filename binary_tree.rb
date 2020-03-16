# frozen_string_literal: true
#reference : https://medium.com/@jessgreb01/data-structures-trees-and-ruby-2959c47ffa26
# A tree is also a node-based data structure, but within a tree, each node can have links to multiple nodes.
# A binary tree is a tree that abides by the following rules: 
#     • Each node has either zero, one, or two children. 
#     • If a node has two children, it must have one child that has a lesser value than the parent,
#     and one child that has a greater value than the parent.

# create a node class 

# In a worst-case scenario, where a tree is completely imbalanced, search is O(N).
# In a best-case scenario, where it is perfectly balanced, search is O(log N)
# Search, deletion and insertion in binary tree is O(log N)
# An ordered array when converted to a tree makes an imbalanced tree, randomize it before converting it.

class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(value= nil)
        @value = value 
        @left = nil
        @right = nil
    end

    def search(value,node)
        if node.nil? || node.value == value
            return node
        elsif value < node.value
            search(value,node.left)
        elsif value > node.value
            search(value, node.right)
        end
    end

    def insert(value,node)
        if value < node.value && node.left.nil?
            insert(value,node.left)
        else
            insert(value,node.left)
        end

        if value > node.value && node.right.nil?
            insert(value,node.right)
        else
            insert(value,node.right)
        end
    end

    def delete(val_to_delete,node)
        # base case is hit & node has no children
        if node.nil?
            return node 

        # if val to delete is less than current node
        elsif val_to_delete < node.value
            node.left = delete(val_to_delete, node.left)
            return node
        # if val to delete is greater than current node 
        elsif val_to_delete > node.value
            node.right = delete(val_to_delete,node.right)
            return node 
        # node to delete == current node 
        elsif val_to_delete == node.value


        end
    end
    
    def traverse_and_print(node)
        if node.nil?
            return 
            traverse_and_print(node.left)
            puts(node.value)
            traverse_and_print(node.right)
        end
    end
end 


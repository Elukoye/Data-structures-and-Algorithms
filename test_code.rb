class Node 
    attr_reader :value
    attr_accessor :left, :right
  
    def initialize(value=nil)
        @value = value
        left = nil;
        right = nil;
    end
end
  
  #Binary Search Tree
  
class BinarySearchTree
    attr_accessor :root_node
  
      def initialize(root_value=nil)
          @root_node = Node.new(root_value)
      end
      
      #if you want to create a binary search tree
      def create_binary_search_tree(size)
          array_of_nums = (0..size).to_a.shuffle
          new_tree = BinarySearchTree.new
          array_of_nums.each do |num|
              new_tree.insert(num)
          end
          return new_tree
      end
  
      def insert(node, value)
          if node.value == value
              return node 
          elsif value < node.value
              insert(node.left, value)
          elsif value > node.value
              insert(node.right, value)
          else
              return node = Node.new(value)
          end
      end
  
    def search(value, node)
        return nil if node.nil?
  
        if value == node.value 
            return node
        elsif value > node.value
            search(value, node.right)
        else value < node.value
            search(value, node.left) 		
        end
    end
  
      def delete(value)
          node = search(value)
          if !node.nil?
              remove(node)
          end
      end
  
      def remove(node)
          if node.left.nil? && node.right.nil?
          node = nil
        elsif !node.left.nil? && node.right.nil?
           node = node.left
        elsif node.left.nil? && !node.right.nil?
           node = node.right
        else
           node = delete_node_with_two_children(node)
        end
       node
      end
  
      def delete_node_with_two_children(node) 
          min_node = find_min_node(node.right)
          replace_value(min_node, node)
          remove_min_node(min_node)
      end
  
        def find_min_node(node)
          if node.left.nil?
              min_node = node
              return min_node
          else
            find_min(node.left)
          end
        end
  
      def replace_value(min_node, node)
          node.value = min_node.value
      end
  
      def remove_min_node(min_node)
          min_node = nil
      end
  
      def BST_is_valid?(node, min=-1.0/0.0, max=1.0/0.0)
  
            until node.left.nil? && node.right.nil? do
              if min > node.value || max < node.value
                  return false
              else  
                  BST_is_valid?(node.left, min, node.value)  
                  BST_is_valid?(node.right, node.value, max)
              end
            end
          return true
      end
end

b_t = BinarySearchTree.new
node = Node.new
value = 6
b_t.insert(node,value)
pp b_t
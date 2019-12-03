#constant time adding and removing elements from the top (because no shifting is required)
#implemented using arrays (LIFO)
#cannot access nth element in the stack line in array (stacks have no O(n) time)
#can be implemented using an array or a linked list

Methods
#pop(): Remove the top item from the stack
#push(item): Add an item to the top of the stack
#peek(): Return the item at the top of the stack
#isEmpty(): Returns true if the stack is empty

require 'pry'
class Stack 
 #create empty array
  def initialize
    @new_arr = Array.new
  end

  def push(num)
    @new_arr.push(num)
  end 

  def pop
   num = @new_arr.pop
  end 

  def peek
    num =@new_arr[@new_arr.length - 1]
  end

  def is_empty?
    return true if @new_arr.length == 0
  end
end 

stack = Stack.new
stack.push(2)
stack.push(3)
stack.peek
puts stack.is_empty?

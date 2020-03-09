#implement node class
# - data
#  - pointer to next_node
#linkedlist class
# - head
# - tail
# methods :add(number),get(index),add_at(index,number),remove_at(index)

#implementing a node class
class Node 
    attr_accessor :data, :next_node

    def initialize(data,next_node = nil)
        @data = data 
        @next_node = next_node
    end
end 


#implement a LinkedList class
class LinkedList 
    def initialize 
        @head = nil
        @tail = nil 
    end 

    def add(number)
        new_node = Node.new(number)
        if @head.nil?
            @head = new_node
            @tail = new_node
        else 
            @tail.next_node = new_node
            @tail = new_node
        end
    end 

    def get(index)
        counter = 0 
        current = @head 
        while counter < index 
            current = current.next_node
            counter += 1
        end 
        current.data
    end 
    
    #create a new node
    #point to the current node 
    #deal with inserting at the head
    def add_at(index,number)
        new_node = Node.new(number)
        current = @head
        if index == 0 
            new_node.next_node = current
            @head = new_node
        end
        if index > 0 
            current = @head 
            counter = 0 
            while counter < (index- 1) do 
                current = current.next_node 
                counter += 1
            end
            new_node.next_node = current.next_node
            current.next_node = new_node
        end  
    end

    def remove(index)
        if @head.nil?
            puts 'list is empty'
        end
        if index == 0 
            current = @head 
            new_node = current.next_node
            @head = new_node
        end
        if index > 0 
            current = @head
            counter = 0 
            while counter < (index - 1) do 
                current = current.next_node
                counter += 1
            end
            node_after = current.next_node.next_node
            current.next_node = node_after
        end
    end
end 

list = LinkedList.new
list.add(3)
list.add(5)
list.remove(0)

pp list
 
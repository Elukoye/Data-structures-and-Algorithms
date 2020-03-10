# frozen_string_literal: true

class Node
  attr_accessor :data, :next_node, :previous_node
  def initialize(data)
    @data = data
 end
end

class DoublyLinkedList
  attr_accessor :first_node, :last_node
  def initialize(first_node = nil, last_node = nil)
    @first_node = first_node
    @last_node = last_node
  end

  def insert_at_end(value)
    new_node = Node.new(value)
    # If there are no elements yet in the linked list:
    if !first_node
      @first_node = new_node
      @last_node = new_node
    else
      new_node.previous_node = @last_node
      @last_node.next_node = new_node
      @last_node = new_node
    end
   end

  def remove_from_front
    removed_node = @first_node
    @first_node = @first_node.next_node
    removed_node
 end
end
class Queue
  attr_accessor :queue
  def initialize
    @queue = DoublyLinkedList.new
  end

  def enque(value)
    @queue.insert_at_end(value)
  end

  def deque
    removed_node = @queue.remove_from_front
    removed_node.data
 end

  def tail
    @queue.last_node.data
  end
end
list = Queue.new
list.enque('sue')
list.enque('kim')
list.enque('will')
list.enque('pat')

pp list.deque
pp list.tail

Overview
#simmilar to stack but oposite of stack
#implemented using dynamic arrays or linked lists
#arrays aren't the best to implemment this data structure because one needs to shift the array
#elements everytime an insertion is done
#It has FIFO order(first in first out)


Restrictions 
#Data can only be inserted at the end of the queue
#Data can be read only at the front of the queue
#Data can only be removed from the front of the queue

BIG O NOTATION
#Enqueue O(1)
#Dequeue O(1)
#Peek O(1)
#Space O(1)

USES
#Breadth First Search
#Printers
#Web workers

REFERENCE
https://www.interviewcake.com/concept/ruby/queue?
https://www.youtube.com/watch?v=okr-XE8yTO8


IMPLEMENTATION
Using a queue , write code that models the function of a printer. It should enqueue documents to be printed and print each document in
Order
class Printer
  def initialize
    @queue = []
  end

  def add_to_printer(document)
    @queue.push(document) 
  end 

  def run
    while @queue.any?
      print(@queue.shift)
    end
  end 

  def print(document)
    puts document
  end
end 
printer =   Printer.new
printer.add_to_printer("one")
printer.add_to_printer("two")
printer.add_to_printer("three")
printer.add_to_printer("three")
puts printer.run

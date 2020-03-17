# A node based data structure 
#  made up of vertices and edges and are used to show relationship between connected components 
# lookup in graph is O(1)
# graphs can be directed or undirected 
# implementation of graph to show friendship

class Person
    attr_accessor :name, :friends

    def initialize(name)
        @name = name 
        @friends = []
    end

    def add_friend(name)
        @friends << name 
    end
end

mary = Person.new("Mary")
mary.add_friend("Henry")
puts mary
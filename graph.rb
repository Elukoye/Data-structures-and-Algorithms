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

class City
    attr_accessor :name, :routes
    def initialize(name)
        @name = name
        @routes = {}
    end

    def add_route(city,price)
        @routes[city] = price
    end
end

nairobi = City.new('Nairobi')
lagos = City.new('Lagos')
nairobi.add_route('lagos',230)
lagos.add_route('nairobi',150)
pp nairobi
pp lagos
# pp nairobi.add_route('lagos' , $213)
# pp lagos.add_route('nairobi', $250)
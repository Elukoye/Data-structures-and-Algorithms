# Hash tables use hash funcgtions to map keys to values
# two values can be mapped to one key 
# collision is when a value tries to occupy a cell thats already taken
#a hash table should be designed to have less collision by :
-ensuring data is distributes across all cells by using load factor which saya that for every 7 pieces of data stored ,there should be 10
avaialble cells.(7/10) 0.7 load factor.
-which hash function is being used. That is the hash function cnt use date an time as keys because they are constantly changing . A key is a hash 
should always return the same value everytime.
#Hash tables have 0(1) reads and insertions making them a more effiicent data structure thank arrays .


def count(arr)
  arr.inject(Hash.new(0)){|hash,key| hash[key] += 1;hash}
end
count([1,2,4,5,4,7,1,4,5,2,5,5,5,7,5])
